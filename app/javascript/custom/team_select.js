const toggleChampionshipFields = () => {
  const countrySelect = document.querySelector('#championship_country_id');
  const championshipFieldsFrame = document.querySelector("#championship_fields_frame");

  const selectedCountryId = countrySelect.value;

  Turbo.visit(`/championships/championship_fields?country_id=${selectedCountryId}`, {frame: "championship_fields_frame"});
}

document.addEventListener('change', (event) => {
  const { target } = event;
  if (target && target.matches('#championship_country_id')) {
    toggleChampionshipFields();
  }
});
