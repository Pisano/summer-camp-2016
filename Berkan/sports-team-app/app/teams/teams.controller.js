class TeamsController {
  constructor($http) {
    this.$http = $http;
  }
  $onInit() {
    this.refresh();
    this.header = 'Teams!';
    this.newTeamForm = { name: '' };
    this.editTeamForm = { name: '' }
    this.teams = [
      { name: '' },
    ]
  }

  removeTeam(team) {
    let teamUrl = 'http://localhost:3000/teams/' + team.id;
    this.$http.delete(teamUrl)
      .then((result) => {
        this.refresh();
      });
  }

  refresh() {
    this.$http.get('http://localhost:3000/teams')
      .then((result) => {
        this.teams = result.data;
        console.log(this.teams)
      });
  }

  addTeam() {
    let newName = this.newTeamForm.name;
    let teamUrl = 'http://localhost:3000/teams';
    this.$http.post(teamUrl, {
      name: newName
    }).then((result) => {
      this.newTeamForm.name = '';
      this.refresh();
    })
  }

  openEditForm(team) {
    this.editThisTeam = team
  }

  closeEditForm() {
    this.editThisTeam = '';
    this.editTeamForm.name = '';
  }

  editTeam(team) {
    team.name = this.editTeamForm.name;
    let teamUrl = 'http://localhost:3000/teams/' + team.id;
    this.$http.put(teamUrl, team).then((result) => {
      this.editTeamForm.name = '';
      this.refresh();
      this.closeEditForm()
    })
  }
}

TeamsController.$inject = ['$http'];

export default TeamsController;
