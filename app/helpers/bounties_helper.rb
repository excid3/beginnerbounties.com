module BountiesHelper
  def status_badge(status)
    color = case status
      when "open"
        "text-green-800 bg-green-100"
      when "assigned"
        "text-blue-800 bg-blue-100"
      else
        "text-indigo-800 bg-indigo-100"
      end

    tag.div status.humanize, class: "#{color} inline-flex items-center rounded-full px-2.5 py-0.5 text-sm font-semibold"
  end
end
