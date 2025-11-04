#!/bin/bash

# HTML Assignment 2 Setup Script
# This script creates a branch and all 20 HTML files in existing repository

echo "================================================"
echo "HTML Assignment 2 - Setup Script"
echo "================================================"

# Check if we're in a git repository
if [ ! -d ".git" ]; then
    echo "Error: Not in a git repository!"
    echo "Please run this script from inside the Frontend-Dev repository."
    echo "Example: cd Frontend-Dev && bash setup_assignment.sh"
    exit 1
fi

echo "Working in repository: $(basename $(pwd))"

# Make sure we're on main branch
echo "Switching to main branch..."
git checkout main

# Create html-basics branch from main
echo "Creating html-basics branch from main..."
git checkout -b html-basics 2>/dev/null || git checkout html-basics

# Create directory for HTML files
mkdir -p html-files
cd html-files || exit

echo "Creating HTML files..."

# Question 1: Basic webpage with name and introduction
cat > question1.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My First Web Page</title>
</head>
<body>
    <!-- Question 1: Basic webpage with name and introduction -->
    <h1>Love Pandey</h1>
    <p>
        Hello! I am Love Pandey, a B.Tech 3rd year student at GLA University, Mathura. 
        I am passionate about web development and technology, constantly learning new skills 
        to build innovative solutions. I enjoy exploring the world of frontend development 
        and creating user-friendly web applications.
    </p>
</body>
</html>
EOF

# Question 2: Hyperlink to Google
cat > question2.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hyperlink Example</title>
</head>
<body>
    <!-- Question 2: Hyperlink that opens in new tab -->
    <h1>Hyperlink Example</h1>
    <p>Click below to visit Google:</p>
    <a href="https://www.google.com" target="_blank">Visit Google Search Engine</a>
</body>
</html>
EOF

# Question 3: Image with alt attribute
cat > question3.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Favorite Character</title>
</head>
<body>
    <!-- Question 3: Image with descriptive alt attribute -->
    <h1>My Favorite Cartoon Character</h1>
    <img src="https://via.placeholder.com/400x300?text=Doraemon" 
         alt="Doraemon, a blue robotic cat with a white face, red nose, and a magical pocket on his belly" 
         width="400" 
         height="300">
    <p>Replace the image src with your actual favorite character image URL</p>
</body>
</html>
EOF

# Question 4: Paragraph with strong and em
cat > question4.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Favorite Hobby</title>
</head>
<body>
    <!-- Question 4: Paragraph with strong and em tags -->
    <h1>My Favorite Hobby</h1>
    <p>
        My favorite hobby is <strong>coding</strong>. I find it incredibly <em>satisfying</em> 
        to solve complex problems and build applications that can make a difference in people's lives. 
        Whether it's developing websites, creating algorithms, or learning new programming languages, 
        coding keeps me engaged and constantly challenged.
    </p>
</body>
</html>
EOF

# Question 5: Paragraph with line break
cat > question5.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Line Break Example</title>
</head>
<body>
    <!-- Question 5: Two sentences separated by br tag -->
    <h1>Line Break Example</h1>
    <p>
        Learning web development opens up endless possibilities for creating amazing user experiences.<br>
        Each day brings new challenges and opportunities to grow as a developer.
    </p>
</body>
</html>
EOF

# Question 6: Blockquote with cite
cat > question6.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inspirational Quote</title>
</head>
<body>
    <!-- Question 6: Blockquote with cite tag -->
    <h1>Inspirational Quote</h1>
    <blockquote>
        The only way to do great work is to love what you do. If you haven't found it yet, keep looking. 
        Don't settle.
    </blockquote>
    <cite>- Steve Jobs</cite>
</body>
</html>
EOF

# Question 7: Different heading levels
cat > question7.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Heading Levels</title>
</head>
<body>
    <!-- Question 7: Demonstrating different heading levels -->
    <h1>Love Pandey</h1>
    <h2>B.Tech Student - Computer Science</h2>
    <h3>Hobbies and Interests: Web Development, Coding, Technology Exploration</h3>
</body>
</html>
EOF

# Question 8: Paragraph with mark and small
cat > question8.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Text Formatting Example</title>
</head>
<body>
    <!-- Question 8: Using mark and small tags -->
    <h1>Important Information</h1>
    <p>
        Web development is a rapidly growing field with <mark>endless opportunities</mark> for 
        creative and technical professionals. The demand for skilled developers continues to rise 
        across various industries.
        <small>Updated recently</small>
    </p>
</body>
</html>
EOF

# Question 9: Paragraph with strong and em
cat > question9.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Emphasis Example</title>
</head>
<body>
    <!-- Question 9: Using both strong and em for emphasis -->
    <h1>Combined Emphasis</h1>
    <p>
        It is <strong>extremely important</strong> to practice coding regularly because 
        <em>consistency is the key</em> to mastering any programming language and becoming 
        a proficient developer.
    </p>
</body>
</html>
EOF

# Question 10: Code tag example
cat > question10.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Code Example</title>
</head>
<body>
    <!-- Question 10: Inline code example -->
    <h1>JavaScript Code Example</h1>
    <p>
        To print "Hello World" in JavaScript, you can use the following code: 
        <code>console.log("Hello World");</code>
    </p>
</body>
</html>
EOF

# Question 11: Span elements
cat > question11.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Span Elements</title>
</head>
<body>
    <!-- Question 11: Using span elements to label text parts -->
    <h1>Text with Span Elements</h1>
    <p>
        <span>Frontend development</span> involves creating the visual and interactive aspects of websites, 
        <span>backend development</span> handles server-side logic and databases, while 
        <span>full-stack development</span> combines both skillsets to build complete web applications.
    </p>
</body>
</html>
EOF

# Question 12: Creative paragraph with multiple inline elements
cat > question12.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Creative Formatting</title>
</head>
<body>
    <!-- Question 12: Creative paragraph combining multiple inline elements -->
    <h1>My Development Journey</h1>
    <p>
        As a <strong>passionate developer</strong>, I believe that <em>learning never stops</em> in 
        the tech world.<br>
        Every <mark>new project</mark> teaches me something valuable, and I'm constantly amazed by 
        how much there is to explore.<br>
        From HTML and CSS to JavaScript frameworks, the journey has been <strong>incredible</strong> 
        and <em>rewarding</em>.
        <small>Last updated: November 2025</small>
    </p>
</body>
</html>
EOF

# Question 13: Header section
cat > question13.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Header Section</title>
</head>
<body>
    <!-- Question 13: Header section with website title -->
    <header>
        <h1>Love's Web Development Portfolio</h1>
    </header>
</body>
</html>
EOF

# Question 14: Navigation section
cat > question14.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navigation Section</title>
</head>
<body>
    <!-- Question 14: Header and navigation -->
    <header>
        <h1>Love's Web Development Portfolio</h1>
    </header>
    
    <!-- Navigation with placeholder links -->
    <nav>
        <a href="#">Home</a>
        <a href="#">About</a>
        <a href="#">Contact</a>
    </nav>
</body>
</html>
EOF

# Question 15: Main section with introduction
cat > question15.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Main Section</title>
</head>
<body>
    <!-- Question 15: Main section with introduction -->
    <header>
        <h1>Love's Web Development Portfolio</h1>
    </header>
    
    <nav>
        <a href="#">Home</a>
        <a href="#">About</a>
        <a href="#">Contact</a>
    </nav>
    
    <main>
        <p>
            Welcome to my portfolio! I am Love Pandey, a B.Tech 3rd year student at GLA University, Mathura. 
            This page showcases my journey in web development and highlights my skills, projects, and passion 
            for creating innovative digital solutions.
        </p>
    </main>
</body>
</html>
EOF

# Question 16: Section element
cat > question16.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Me Section</title>
</head>
<body>
    <!-- Question 16: Section with About Me -->
    <header>
        <h1>Love's Web Development Portfolio</h1>
    </header>
    
    <nav>
        <a href="#">Home</a>
        <a href="#">About</a>
        <a href="#">Contact</a>
    </nav>
    
    <main>
        <p>
            Welcome to my portfolio! I am Love Pandey, a B.Tech 3rd year student at GLA University, Mathura. 
            This page showcases my journey in web development and highlights my skills, projects, and passion 
            for creating innovative digital solutions.
        </p>
        
        <section>
            <h2>About Me</h2>
            <p>
                I am a dedicated computer science student with a strong interest in frontend and full-stack 
                development. Throughout my academic journey, I have worked on various projects involving HTML, 
                CSS, JavaScript, and modern web frameworks. I enjoy solving problems, learning new technologies, 
                and building applications that provide great user experiences.
            </p>
        </section>
    </main>
</body>
</html>
EOF

# Question 17: Article element
cat > question17.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My First Blog</title>
</head>
<body>
    <!-- Question 17: Article element with blog content -->
    <header>
        <h1>Love's Web Development Portfolio</h1>
    </header>
    
    <nav>
        <a href="#">Home</a>
        <a href="#">About</a>
        <a href="#">Contact</a>
    </nav>
    
    <main>
        <p>
            Welcome to my portfolio! I am Love Pandey, a B.Tech 3rd year student at GLA University, Mathura. 
            This page showcases my journey in web development and highlights my skills, projects, and passion 
            for creating innovative digital solutions.
        </p>
        
        <section>
            <h2>About Me</h2>
            <p>
                I am a dedicated computer science student with a strong interest in frontend and full-stack 
                development. Throughout my academic journey, I have worked on various projects involving HTML, 
                CSS, JavaScript, and modern web frameworks. I enjoy solving problems, learning new technologies, 
                and building applications that provide great user experiences.
            </p>
        </section>
        
        <article>
            <h2>My First Blog</h2>
            <p>
                Today marks an important milestone in my web development journey as I create my first structured 
                HTML webpage. Learning semantic HTML has helped me understand how to build accessible and 
                well-organized websites. I'm excited to continue exploring more advanced concepts like responsive 
                design, JavaScript interactivity, and modern frameworks. The world of web development is vast and 
                fascinating, and I can't wait to see where this journey takes me!
            </p>
        </article>
    </main>
</body>
</html>
EOF

# Question 18: Aside element
cat > question18.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Useful Links</title>
</head>
<body>
    <!-- Question 18: Aside element with useful links -->
    <header>
        <h1>Love's Web Development Portfolio</h1>
    </header>
    
    <nav>
        <a href="#">Home</a>
        <a href="#">About</a>
        <a href="#">Contact</a>
    </nav>
    
    <main>
        <p>
            Welcome to my portfolio! I am Love Pandey, a B.Tech 3rd year student at GLA University, Mathura. 
            This page showcases my journey in web development and highlights my skills, projects, and passion 
            for creating innovative digital solutions.
        </p>
        
        <section>
            <h2>About Me</h2>
            <p>
                I am a dedicated computer science student with a strong interest in frontend and full-stack 
                development. Throughout my academic journey, I have worked on various projects involving HTML, 
                CSS, JavaScript, and modern web frameworks. I enjoy solving problems, learning new technologies, 
                and building applications that provide great user experiences.
            </p>
        </section>
        
        <article>
            <h2>My First Blog</h2>
            <p>
                Today marks an important milestone in my web development journey as I create my first structured 
                HTML webpage. Learning semantic HTML has helped me understand how to build accessible and 
                well-organized websites. I'm excited to continue exploring more advanced concepts like responsive 
                design, JavaScript interactivity, and modern frameworks. The world of web development is vast and 
                fascinating, and I can't wait to see where this journey takes me!
            </p>
        </article>
        
        <aside>
            <h3>Useful Links</h3>
            <p>
                <a href="https://developer.mozilla.org" target="_blank">MDN Web Docs</a><br>
                <a href="https://github.com" target="_blank">GitHub</a>
            </p>
        </aside>
    </main>
</body>
</html>
EOF

# Question 19: Footer element
cat > question19.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Complete Page with Footer</title>
</head>
<body>
    <!-- Question 19: Adding footer with copyright -->
    <header>
        <h1>Love's Web Development Portfolio</h1>
    </header>
    
    <nav>
        <a href="#">Home</a>
        <a href="#">About</a>
        <a href="#">Contact</a>
    </nav>
    
    <main>
        <p>
            Welcome to my portfolio! I am Love Pandey, a B.Tech 3rd year student at GLA University, Mathura. 
            This page showcases my journey in web development and highlights my skills, projects, and passion 
            for creating innovative digital solutions.
        </p>
        
        <section>
            <h2>About Me</h2>
            <p>
                I am a dedicated computer science student with a strong interest in frontend and full-stack 
                development. Throughout my academic journey, I have worked on various projects involving HTML, 
                CSS, JavaScript, and modern web frameworks. I enjoy solving problems, learning new technologies, 
                and building applications that provide great user experiences.
            </p>
        </section>
        
        <article>
            <h2>My First Blog</h2>
            <p>
                Today marks an important milestone in my web development journey as I create my first structured 
                HTML webpage. Learning semantic HTML has helped me understand how to build accessible and 
                well-organized websites. I'm excited to continue exploring more advanced concepts like responsive 
                design, JavaScript interactivity, and modern frameworks. The world of web development is vast and 
                fascinating, and I can't wait to see where this journey takes me!
            </p>
        </article>
        
        <aside>
            <h3>Useful Links</h3>
            <p>
                <a href="https://developer.mozilla.org" target="_blank">MDN Web Docs</a><br>
                <a href="https://github.com" target="_blank">GitHub</a>
            </p>
        </aside>
    </main>
    
    <footer>
        <p>&copy; 2025 Love Pandey. All rights reserved.</p>
    </footer>
</body>
</html>
EOF

# Question 20: Complete webpage with all semantic elements
cat > question20.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Complete Semantic HTML Webpage</title>
</head>
<body>
    <!-- Question 20: Complete webpage combining all semantic HTML5 elements -->
    
    <!-- Header section with site title -->
    <header>
        <h1>Love's Web Development Portfolio</h1>
        <p>B.Tech Student | GLA University, Mathura</p>
    </header>
    
    <!-- Navigation menu -->
    <nav>
        <a href="#">Home</a> | 
        <a href="#">About</a> | 
        <a href="#">Projects</a> | 
        <a href="#">Blog</a> | 
        <a href="#">Contact</a>
    </nav>
    
    <!-- Main content area -->
    <main>
        <!-- Introduction paragraph -->
        <p>
            Welcome to my portfolio! I am Love Pandey, a B.Tech 3rd year student at GLA University, Mathura. 
            This page showcases my journey in web development and highlights my skills, projects, and passion 
            for creating innovative digital solutions. Feel free to explore and learn more about my work.
        </p>
        
        <!-- About Me section -->
        <section>
            <h2>About Me</h2>
            <p>
                I am a dedicated computer science student with a strong interest in frontend and full-stack 
                development. Throughout my academic journey, I have worked on various projects involving HTML, 
                CSS, JavaScript, and modern web frameworks. I enjoy solving problems, learning new technologies, 
                and building applications that provide great user experiences. My goal is to become a skilled 
                developer who can contribute to meaningful projects and make a positive impact through technology.
            </p>
        </section>
        
        <!-- Blog article -->
        <article>
            <h2>My First Blog: Beginning My Web Development Journey</h2>
            <p>
                <strong>Date:</strong> November 2025
            </p>
            <p>
                Today marks an important milestone in my web development journey as I create my first structured 
                HTML webpage. Learning semantic HTML has helped me understand how to build <em>accessible</em> and 
                <em>well-organized</em> websites. I'm excited to continue exploring more advanced concepts like 
                responsive design, JavaScript interactivity, and modern frameworks.<br><br>
                
                The world of web development is <mark>vast and fascinating</mark>, and I can't wait to see where 
                this journey takes me! Every day I discover something new, whether it's a clever CSS trick, a 
                powerful JavaScript function, or a design pattern that makes code more maintainable.<br><br>
                
                As <cite>Steve Jobs</cite> once said in a memorable quote:
            </p>
            <blockquote>
                The only way to do great work is to love what you do. If you haven't found it yet, keep looking. 
                Don't settle.
            </blockquote>
            <p>
                <small>This blog post was last updated in November 2025</small>
            </p>
        </article>
        
        <!-- Sidebar with useful links -->
        <aside>
            <h3>Useful Resources</h3>
            <p>Here are some helpful links for web developers:</p>
            <ul>
                <li><a href="https://developer.mozilla.org" target="_blank">MDN Web Docs - Comprehensive web development documentation</a></li>
                <li><a href="https://github.com" target="_blank">GitHub - Code hosting and collaboration platform</a></li>
                <li><a href="https://stackoverflow.com" target="_blank">Stack Overflow - Developer community</a></li>
            </ul>
            
            <h3>Quick Code Snippet</h3>
            <p>
                To print "Hello World" in JavaScript, use: <code>console.log("Hello World");</code>
            </p>
        </aside>
        
        <!-- Additional section with skills -->
        <section>
            <h2>Technical Skills</h2>
            <p>
                I am continuously expanding my skillset in various areas of web development. Here are the 
                technologies I'm currently working with:
            </p>
            <p>
                <span><strong>Frontend:</strong> HTML5, CSS3, JavaScript, React</span><br>
                <span><strong>Backend:</strong> Node.js, Express, Database Management</span><br>
                <span><strong>Tools:</strong> Git, GitHub, VS Code, Chrome DevTools</span>
            </p>
        </section>
    </main>
    
    <!-- Footer with copyright information -->
    <footer>
        <p>&copy; 2025 Love Pandey. All rights reserved.</p>
        <p>GLA University, Mathura | B.Tech Computer Science Engineering</p>
        <p>Contact: <a href="mailto:love.pandey@example.com">love.pandey@example.com</a></p>
    </footer>
</body>
</html>
EOF

echo "All 20 HTML files created successfully!"

# Add all files to git
cd ..
git add .
git commit -m "Add all 20 HTML assignment files"

echo ""
echo "================================================"
echo "Setup Complete!"
echo "================================================"
echo "Repository: $REPO_NAME"
echo "Branch: html-basics"
echo "Location: $(pwd)"
echo ""
echo "All 20 HTML files have been created in the 'html-files' directory."
echo ""
echo "To view your files:"
echo "  cd $REPO_NAME/html-files"
echo "  ls"
echo ""
echo "To switch between branches:"
echo "  git checkout main"
echo "  git checkout html-basics"
echo ""
echo "================================================"
