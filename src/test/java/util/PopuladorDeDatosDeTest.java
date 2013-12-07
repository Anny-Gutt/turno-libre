package util;

import com.turnolibre.business.agenda.Agenda;
import com.turnolibre.business.excepcion.ExcepcionDeReglaDelNegocio;
import com.turnolibre.business.prestador.PrestadorDeServicios;
import com.turnolibre.business.prestador.Rubro;
import com.turnolibre.business.ubicacion.Barrio;
import com.turnolibre.business.ubicacion.Ciudad;
import com.turnolibre.business.ubicacion.Ubicacion;
import com.turnolibre.business.usuario.Cliente;
import com.turnolibre.business.usuario.Usuario;
import org.joda.time.DateTimeUtils;

import java.util.Arrays;

import static util.TestConstants.*;


public class PopuladorDeDatosDeTest extends Populador {

	private static final String APPLICATION_CONTEXT = "classpath:spring/business-config.xml";
	private static final String SECURITY_CONTEXT = "classpath:spring/security-config.xml";


	private PopuladorDeDatosDeTest() {
		super(APPLICATION_CONTEXT, SECURITY_CONTEXT);
	}

	public static void main(String[] args) throws ExcepcionDeReglaDelNegocio {
		
		DateTimeUtils.setCurrentMillisFixed(CURRENT_TIME_MOCK);

		PopuladorDeDatosDeTest populadorDeDatos = new PopuladorDeDatosDeTest();
		populadorDeDatos.ejecutar();

		DateTimeUtils.setCurrentMillisSystem();
	}

	private void ejecutar() throws ExcepcionDeReglaDelNegocio {

		popularCiudades();
		popularBarrios();

		popularUsuarios();
		asignarRolesAdmin();

		popularRubros();
		popularPrestadores();

		popularAgendas();
		popularServicios();

		popularJornadasHabituales();
		popularJornadasOcasionales();
		popularDiasNoLaborales();

		sacarTurnos();
	}

	private void popularCiudades() {

		popularCiudad("CIUDAD AUTONOMA DE BUENOS AIRES", null, null);
		popularCiudad("11 DE SEPTIEMBRE", "1657", "BUENOS AIRES");
		popularCiudad("12 DE AGOSTO", "2701", "BUENOS AIRES");
		popularCiudad("12 DE OCTUBRE", "6501", "BUENOS AIRES");
	}

	private void popularBarrios() {
		popularBarrio("Colegiales", (Ciudad) storedObjects.get("ciudad - CIUDAD AUTONOMA DE BUENOS AIRES"));
	}

	private void popularUsuarios() throws ExcepcionDeReglaDelNegocio {

		Ciudad caba = (Ciudad) storedObjects.get("ciudad - CIUDAD AUTONOMA DE BUENOS AIRES");
		Ciudad onceSept = (Ciudad) storedObjects.get("ciudad - 11 DE SEPTIEMBRE");

		popularUsuario("Victor Del Rio", "victor@gmail.com", "123456", caba);
		popularUsuario("Manuel Rodriguez","manuel@gmail.com", "123456", caba);
		popularUsuario("Juan Sanchez", "juan@gmail.com", "123456", caba);
		popularUsuario("Carlos Del Rio", "carlos@gmail.com", "123456", caba);
		popularUsuario("Admin Agenda1", "admin1@gmail.com", "123456", onceSept);
		popularUsuario("Admin Agenda2", "admin2@gmail.com", "123456", onceSept);
	}

	private void asignarRolesAdmin() throws ExcepcionDeReglaDelNegocio {

		asignarRolAdmin("Admin Agenda1");
		asignarRolAdmin("Admin Agenda2");
	}

	private void popularRubros() {

		popularRubro("Consultorios medicos");
	}

	private void popularPrestadores() throws ExcepcionDeReglaDelNegocio {

		Ubicacion ubicacionPrestador1 = new Ubicacion((Ciudad) storedObjects.get("ciudad - CIUDAD AUTONOMA DE BUENOS AIRES"), (Barrio) storedObjects.get("barrio - Colegiales"), "Aguilar 2547");
		popularPrestador("Consultorio medico sur", ubicacionPrestador1, "47850055", "/images/prestadores/prestador1.jpg", (Rubro) storedObjects.get("rubro - Consultorios medicos"));
	}

	private void popularAgendas() throws ExcepcionDeReglaDelNegocio {

		popularAgenda((PrestadorDeServicios) storedObjects.get("prestador - Consultorio medico sur"), "Dr. Ramirez", ANTELACION_2_MESES, Arrays.asList((Usuario) storedObjects.get("usuario - Admin Agenda1")));
		popularAgenda((PrestadorDeServicios) storedObjects.get("prestador - Consultorio medico sur"), "Dra. Lopez", ANTELACION_2_MESES, Arrays.asList((Usuario) storedObjects.get("usuario - Admin Agenda2")));
	}

	private void popularServicios() {

		popularServicio((PrestadorDeServicios) storedObjects.get("prestador - Consultorio medico sur"), "Oftalmología", Arrays.asList((Agenda)storedObjects.get("agenda - Dr. Ramirez"), (Agenda)storedObjects.get("agenda - Dra. Lopez")));
	}

	private void popularJornadasHabituales() throws ExcepcionDeReglaDelNegocio {

		popularJornadaHabitual((Agenda)storedObjects.get("agenda - Dr. Ramirez"), "lunes10a18_1", LUNES_A_LAS_10, LUNES_A_LAS_18, _1_HORA, _2_TURNOS);
		popularJornadaHabitual((Agenda)storedObjects.get("agenda - Dra. Lopez"), "lunes10a18_2", LUNES_A_LAS_10, LUNES_A_LAS_18, _1_HORA, _3_TURNOS);
	}

	private void popularJornadasOcasionales() throws ExcepcionDeReglaDelNegocio {

		popularJornadaOcasional((Agenda) storedObjects.get("agenda - Dra. Lopez"), "domingo18de10a18", DOM_18_MARZO_2012_A_LAS_10, DOM_18_MARZO_2012_A_LAS_17, _1_HORA, _2_TURNOS);
	}

	private void popularDiasNoLaborales() throws ExcepcionDeReglaDelNegocio {

		popularDiaNoLaboral((Agenda)storedObjects.get("agenda - Dra. Lopez"), "diaDelInvento", _20_DE_ENERO_DEL_2012, "Dia del invento");
		popularDiaNoLaboral((Agenda)storedObjects.get("agenda - Dra. Lopez"), "diaDeLaIndependencia", _9_DE_JULIO_DEL_2012, "Dia de la independencia");
		popularDiaNoLaboral((Agenda)storedObjects.get("agenda - Dra. Lopez"), "diaDelTrabajador", _1_DE_MAYO_DEL_2012, "Dia del trabajador");
	}

	private void sacarTurnos() throws ExcepcionDeReglaDelNegocio {

		sacarTurno(((Usuario)storedObjects.get("usuario - Victor Del Rio")).getRol(Cliente.class), (Agenda)storedObjects.get("agenda - Dra. Lopez"), INTERVALO_EN_JORNADA_HABITUAL);
		sacarTurno(((Usuario)storedObjects.get("usuario - Manuel Rodriguez")).getRol(Cliente.class), (Agenda)storedObjects.get("agenda - Dra. Lopez"), INTERVALO_EN_JORNADA_HABITUAL);
	}

}
