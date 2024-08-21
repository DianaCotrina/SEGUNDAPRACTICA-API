package com.nttdata.glue;

import com.nttdata.steps.CrearOrden;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.thucydides.core.annotations.Steps;

public class CrearOrdenStepsDefs {

    @Steps
    CrearOrden crearOrden;
    

    @When("creo creo la orden con petId {string}")
    public void creoCreoLaOrdenConPetId(String petId) {
        crearOrden.crearOrden(petId);
    }

    @Then("el código de respuesta es {int}")
    public void elCódigoDeRespuestaEs(int statusCode) {
        crearOrden.validarCodigoRespuesta(statusCode);
    }
}
