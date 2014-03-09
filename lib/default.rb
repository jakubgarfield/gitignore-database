# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.
include Nanoc3::Helpers::Blogging
include Nanoc3::Helpers::Tagging
include Nanoc3::Helpers::Rendering
include Nanoc3::Helpers::LinkTo

def site_description(item)
  ".gitignore files database for your projects versioned in git"
end

def site_keywords(item)
    keywords = "gitignore, .gitignore, Ignore files in git, git, gitignore windows"
    if item[:kind] == 'article'
        keywords + ", " + item[:tags].join(", ")
    else 
        keywords
    end
end

