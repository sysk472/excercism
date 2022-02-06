class Attendee
  def initialize(height)
    @height = height
  end

  def height
    @height
  end

  def pass_id
    @pass_id
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  def has_pass?
    @pass_id.present?
  end

  def fits_ride?(min_height)
    height > min_height
  end

  def allowed_to_ride?(min_height)
    has_pass? && fits_ride?(min_height)
  end
end
