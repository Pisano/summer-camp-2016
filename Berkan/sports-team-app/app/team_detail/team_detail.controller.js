class TeamDetailController {
  constructor($stateParams, $http) {
    this.$stateParams = $stateParams;
    this.$http = $http;
  }
  $onInit() {
    this.refresh();
    this.newPlayerForm = { name: '' };
    this.editPlayerForm = { name: '' };
  }
  removePlayer(player) {
    let playerUrl = 'http://localhost:3000/players/' + player.id;
    this.$http.delete(playerUrl)
      .then((result) => {
        this.refresh();
      });
  }
  refresh() {
    let teamUrl = 'http://localhost:3000/teams/' + this.$stateParams.id;
    console.log(teamUrl);
    this.$http.get(teamUrl)
      .then((result) => {
        this.teamDetail = result.data;
      });
  }
  addPlayer() {
    let newName = this.newPlayerForm.name;
    let playersUrl = 'http://localhost:3000/players/';
    this.$http.post(playersUrl, {
      name: newName,
      team_id: this.$stateParams.id
    })
      .then((result) => {
        this.newPlayerForm.name = '';
        this.refresh();
      });
  }

  openEditForm(player) {
    this.editThisPlayer = player
  }

  closeEditForm() {
    this.editThisPlayer = '';
    this.editPlayerForm.name = '';
  }

  editPlayer(player) {
    player.name = this.editPlayerForm.name;
    let playerUrl = 'http://localhost:3000/players/' + player.id;
    this.$http.put(playerUrl, player).then((result) => {
      this.editPlayerForm.name = '';
      this.refresh();
      this.closeEditForm()
    })
  }
}

TeamDetailController.$inject = ['$stateParams', '$http'];

export default TeamDetailController;
