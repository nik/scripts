branches = IO.popen('git branch')
for branch in branches.readlines
  if branch.strip.match(/^#{ARGV[0]}/)
    system("grb rm #{branch.strip}")
  end
end
