const toggleFields = () => {
  const positionSelect = document.querySelector('#player_position_id');
  const keeperFieldsFrame = document.querySelector("#keeper_fields_frame");

  const selectedPositionId = positionSelect.value;
  const teamId = document.querySelector('[data-controller="keeper"]').dataset.teamId;

  
  Turbo.visit(`/players/keeper_fields?position_id=${selectedPositionId}`, {frame: "keeper_fields_frame"} );
 }

document.addEventListener('change', (event) => {
  const { target } = event;
  if (target && target.matches('#player_position_id')) {
    toggleFields(); 
  }
});
