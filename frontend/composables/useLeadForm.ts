interface LeadFormData {
  name: string
  club: string
  contact: string
  city: string
}

interface LeadFormOptions {
  onSuccess?: () => void
  onError?: (error: string) => void
}

export function useLeadForm(options: LeadFormOptions = {}) {
  const toast = useToast()

  const showForm = ref(false)
  const isSubmitting = ref(false)

  const form = ref<LeadFormData>({
    name: '',
    club: '',
    contact: '',
    city: '',
  })

  const resetForm = () => {
    form.value = {
      name: '',
      club: '',
      contact: '',
      city: '',
    }
  }

  const openForm = () => {
    showForm.value = true
  }

  const closeForm = () => {
    showForm.value = false
  }

  const submitForm = async () => {
    isSubmitting.value = true

    try {
      const response = await $fetch('/api/lead', {
        method: 'POST',
        body: {
          name: form.value.name,
          club: form.value.club,
          contact: form.value.contact,
          city: form.value.city,
          type: 'pilot',
        },
      })

      if (response.success) {
        closeForm()
        resetForm()

        toast.success({
          title: 'Заявка отправлена!',
          message: 'Мы свяжемся с вами в течение рабочего дня для запуска пилота.',
          timeout: 6000,
        })

        options.onSuccess?.()
      }
      else {
        handleError('error' in response ? response : undefined)
      }
    }
    catch (err: unknown) {
      console.error('Error submitting form:', err)
      const error = err as { data?: { error?: string, details?: Array<{ message: string }> } }
      handleError(error.data)
    }
    finally {
      isSubmitting.value = false
    }
  }

  const handleError = (response?: { error?: string, details?: Array<{ message: string }> }) => {
    let errorTitle = 'Ошибка отправки'
    let errorMessage = 'Произошла ошибка. Попробуйте еще раз или свяжитесь с нами напрямую.'

    if (response?.error === 'Invalid form data') {
      errorTitle = 'Неверные данные'
      errorMessage = 'Проверьте правильность заполнения всех полей формы.'

      if (response.details && response.details.length > 0) {
        const validationErrors = response.details.map(detail => detail.message).join(', ')
        errorMessage = `Ошибки валидации: ${validationErrors}`
      }
    }
    else if (response?.error === 'Service temporarily unavailable') {
      errorTitle = 'Сервис недоступен'
      errorMessage = 'Сервис временно недоступен. Попробуйте позже или свяжитесь с нами напрямую.'
    }

    toast.error({
      title: errorTitle,
      message: errorMessage,
      timeout: 8000,
    })

    options.onError?.(errorMessage)
  }

  return {
    showForm,
    isSubmitting,
    form,
    openForm,
    closeForm,
    resetForm,
    submitForm,
  }
}
