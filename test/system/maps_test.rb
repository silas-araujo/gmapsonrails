require "application_system_test_case"

class MapsTest < ApplicationSystemTestCase
  setup do
    @map = maps(:one)
  end

  test "visiting the index" do
    visit maps_url
    assert_selector "h1", text: "Maps"
  end

  test "creating a Map" do
    visit maps_url
    click_on "New Map"

    check "Ativo" if @map.ativo
    fill_in "Bairro", with: @map.bairro
    fill_in "Cpf", with: @map.cpf
    check "Dif respirar" if @map.dif_respirar
    check "Dor garganta" if @map.dor_garganta
    check "Febre" if @map.febre
    fill_in "Matricula", with: @map.matricula
    check "Nenhum sint" if @map.nenhum_sint
    fill_in "Nome", with: @map.nome
    check "Tosse" if @map.tosse
    click_on "Create Map"

    assert_text "Map was successfully created"
    click_on "Back"
  end

  test "updating a Map" do
    visit maps_url
    click_on "Edit", match: :first

    check "Ativo" if @map.ativo
    fill_in "Bairro", with: @map.bairro
    fill_in "Cpf", with: @map.cpf
    check "Dif respirar" if @map.dif_respirar
    check "Dor garganta" if @map.dor_garganta
    check "Febre" if @map.febre
    fill_in "Matricula", with: @map.matricula
    check "Nenhum sint" if @map.nenhum_sint
    fill_in "Nome", with: @map.nome
    check "Tosse" if @map.tosse
    click_on "Update Map"

    assert_text "Map was successfully updated"
    click_on "Back"
  end

  test "destroying a Map" do
    visit maps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Map was successfully destroyed"
  end
end
