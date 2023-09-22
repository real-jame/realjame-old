module Jekyll
  class TagPageGenerator < Generator
    safe true

    def generate(site)
      tags = site.posts.docs.flat_map { |post| post.data["tags"] }.uniq
      categories = site.posts.docs.flat_map { |post| post.data["category"] }.uniq

      tags.each do |tag|
        # Generate tag page for each category
        categories.each do |category|
          site.pages << TagPage.new(site, site.source, "_tags/#{category}", tag, category)
        end

        # Generate tag page for all categories
        site.pages << TagPage.new(site, site.source, "_tags", tag)
      end
    end
  end

  class TagPage < Page
    def initialize(site, base, dir, tag, category = nil)
      @site = site
      @base = base
      @dir = dir
      @name = "#{tag}.html"

      self.process(@name)
      self.read_yaml(File.join(base, "_layouts"), "tag.html")
      self.data["tag"] = tag

      if category
        display_name = site.config["category_display_names"][category] || category.to_s.capitalize
        self.data["title"] = "#{display_name} tagged with '#{tag}'"
        self.data["category"] = category
      else
        self.data["title"] = "Posts tagged with '#{tag}'"
      end
    end
  end
end
