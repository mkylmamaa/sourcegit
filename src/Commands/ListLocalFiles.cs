using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;

namespace SourceGit.Commands
{
    public partial class ListLocalFiles : Command
    {
        public ListLocalFiles(string repo)
        {
            WorkingDirectory = repo;
            Context = repo;
            Args = $"ls-files";
        }

        public List<Models.Change> Result()
        {
            Exec();
            return _files;
        }

        protected override void OnReadline(string line)
        {
            var change = new Models.Change() { Path = line };
            _files.Add(change);
        }

        private readonly List<Models.Change> _files = new List<Models.Change>();
    }
}
