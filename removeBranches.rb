branches = IO.popen('git branch')
for branch in branches.readlines
  if branch.strip.match(/^#{ARGV[0]}/)
    system("git push origin :#{branch.strip}")
    system("git branch -D #{branch.strip}")
  end
end
