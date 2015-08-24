module ApplicationHelper
  FLASH_CLASSES = {
    notice: 'info',
    error: 'danger',
    alert: 'warning'
  }

  def flash_class(level)
    FLASH_CLASSES[level]
  end
end