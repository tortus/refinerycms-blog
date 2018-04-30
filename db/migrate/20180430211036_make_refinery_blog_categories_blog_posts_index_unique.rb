class MakeRefineryBlogCategoriesBlogPostsIndexUnique < ActiveRecord::Migration
  def up
    remove_index "refinery_blog_categories_blog_posts", name: "index_blog_categories_blog_posts_on_bc_and_bp"
    add_index "refinery_blog_categories_blog_posts",
              ["blog_category_id", "blog_post_id"],
              name: "index_blog_categories_blog_posts_on_bc_and_bp",
              unique: true
  end

  def down
    remove_index "refinery_blog_categories_blog_posts", name: "index_blog_categories_blog_posts_on_bc_and_bp"
    add_index "refinery_blog_categories_blog_posts",
              ["blog_category_id", "blog_post_id"],
              name: "index_blog_categories_blog_posts_on_bc_and_bp"
  end
end
