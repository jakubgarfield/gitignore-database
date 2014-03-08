# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.
include Nanoc3::Helpers::Blogging
include Nanoc3::Helpers::Tagging
include Nanoc3::Helpers::Rendering
include Nanoc3::Helpers::LinkTo

def site_description(item)
    if item[:kind] == 'article'
        item[:description]
    else
        "Blog about programming and personal opensource projects such as Bonobo Git Server for Windows."
    end
end

def site_keywords(item)
    keywords = "Programming, Computer Science, .NET Framework, C#, WPF, ASP.NET, Git, Bonobo, Git Server, Git Server for Windows"
    if item[:kind] == 'article'
        keywords + ", " + item[:tags].join(", ")
    else 
        keywords
    end
end

