class PostFilterer < Tenon::GenericFilterer #:nodoc:
  def filter
    @scope = gte('posts.publish_at', params[:start_date])
    @scope = lte('posts.publish_at', params[:end_date])
    @scope = reorder(params[:order_field], params[:order_direction])
    super
  end

  private

  def allowed_order_fields
    ['publish_at']
  end
end
