import { z } from 'zod'

const LeadSchema = z.object({
  name: z.string().min(2, 'Имя должно содержать минимум 2 символа'),
  club: z.string().min(2, 'Название клуба должно содержать минимум 2 символа'),
  contact: z.string().min(5, 'Контакт должен содержать минимум 5 символов'),
  city: z.string().min(2, 'Город должен содержать минимум 2 символа'),
  type: z.enum(['pilot', 'demo']).default('pilot'),
})

export default defineEventHandler(async (event) => {
  try {
    // Rate limiting (simple implementation)
    const clientIP = event.node.req.headers['x-forwarded-for'] || event.node.req.socket.remoteAddress || 'unknown'

    // Parse request body
    const body = await readBody(event)

    // Validate input
    const validatedData = LeadSchema.parse(body)

    // Get runtime config
    const config = useRuntimeConfig()

    // Check if Telegram is configured
    if (!config.telegramBotToken || !config.telegramChatId) {
      console.error('Telegram bot not configured')
      return {
        success: false,
        error: 'Service temporarily unavailable',
      }
    }

    // Format message for Telegram
    const message = `
🎮 *Новая заявка на пилот BlackLoyal*

👤 *Имя:* ${validatedData.name}
🏢 *Клуб:* ${validatedData.club}
📍 *Город:* ${validatedData.city}
📞 *Контакт:* ${validatedData.contact}
🎯 *Тип:* ${validatedData.type === 'pilot' ? 'Запуск пилота' : 'Демо-доступ'}

⏰ *Время:* ${new Date().toLocaleString('ru-RU', { timeZone: 'Europe/Moscow' })}
🌐 *IP:* ${clientIP}
    `.trim()

    // Send to Telegram
    const telegramResponse = await fetch(`https://api.telegram.org/bot${config.telegramBotToken}/sendMessage`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        chat_id: config.telegramChatId,
        text: message,
        parse_mode: 'Markdown',
      }),
    })

    if (!telegramResponse.ok) {
      const errorData = await telegramResponse.text()
      console.error('Telegram API error:', errorData)
      return {
        success: false,
        error: 'Failed to send notification',
      }
    }

    // Log successful submission
    console.log(`Lead submitted: ${validatedData.name} from ${validatedData.club} in ${validatedData.city}`)

    return {
      success: true,
      message: 'Заявка успешно отправлена',
    }
  }
  catch (error) {
    console.error('Lead submission error:', error)

    if (error instanceof z.ZodError) {
      return {
        success: false,
        error: 'Invalid form data',
        details: error.errors,
      }
    }

    return {
      success: false,
      error: 'Internal server error',
    }
  }
})
