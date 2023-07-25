// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> de_DE = {
  "errors": {
    "server": {
      "requestCancelled": "Anfrage an den Server wurde abgebrochen.",
      "connectionTimeOut": "Verbindung abgelaufen. Versuchen Sie es später erneut!",
      "receiveTimeout": "Zeitüberschreitung beim Empfangen aufgetreten. Versuchen Sie es später erneut!",
      "sendTimeout": "Zeitüberschreitung beim Senden der Anfrage. Versuchen Sie es später erneut!",
      "socketException": "Anfrage fehlgeschlagen. Stellen Sie sicher, dass Ihre Verbindung Internetzugang hat.",
      "unexpectedError": "Unerwarteter Fehler aufgetreten!",
      "someThingWentWrong": "Etwas ist schief gelaufen!",
      "badRequest": "Fehlerhafte Anfrage!",
      "authenticationFail": "Authentifizierung fehlgeschlagen. Bitte erneut anmelden!",
      "authenticatedUser": "Der authentifizierte Benutzer darf nicht auf den angegebenen API-Endpunkt zugreifen.",
      "urlNotFound": "Die angeforderte Ressource existiert nicht!",
      "invalidMethod": "Methode nicht erlaubt. Bitte überprüfen Sie den Allow-Header auf die erlaubten HTTP-Methoden.",
      "unsupportedMediaType": "Nicht unterstützter Medientyp. Der angeforderte Inhaltstyp oder die Versionsnummer ist ungültig.",
      "dataValidationFailed": "Datenvalidierung fehlgeschlagen!",
      "toManyRequests": "Zu viele Anfragen!",
      "serverError": "Interner Serverfehler. Bitte kontaktieren Sie den Administrator!",
      "unhandledStatusCode": "Hoppla, etwas ist schief gelaufen! Fehler {}",
      "hasAnotherBooking": "Das Unternehmen hat eine weitere Buchung für die angeforderte Zeit. Bitte versuchen Sie einen anderen Zeitraum!",
      "hasClosedTime": "Das Unternehmen hat während des angeforderten Zeitfensters geschlossen. Bitte versuchen Sie einen anderen Zeitraum!",
      "notFoundMail": "Diese E-Mail wurde nicht gefunden!",
      "failedToVerifyEmail": "E-Mail-Bestätigung fehlgeschlagen!",
      "companyNotFound": "Firma nicht gefunden!"
    },
    "errorLaunchApp": "Fehler beim Starten der App",
    "noPageFound": "Keine Seite gefunden"
  },
  "features": {
    "signUp": {
      "ui": {
        "title": "Registrieren",
        "subTitle": "Ihre Aktivität kann später über Einstellungen geändert werden.",
        "selectBusiness": "Unternehmen auswählen",
        "selectRole": "Rolle auswählen",
        "yourName": "Ihr Name",
        "mobileNumber": "Handynummer",
        "selectBusinessSearchHint": "Geben Sie den Namen des Unternehmens und der Stadt ein",
        "countryPickerTitle": "Geben Sie ein Land ein, um zu suchen",
        "alertTitle": "Gewerberegistrierungscode",
        "codeHere": "Code hier eingeben",
        "alertSubTitle": "Geben Sie den vom Unternehmen angegebenen Unternehmensregistrierungscode ein"
      },
      "alerts": {
        "pleaseWait": "Bitte warten",
        "registrationFailed": "Registrierung fehlgeschlagen",
        "getBusinessCardListFailed": "Datenabruf fehlgeschlagen. Bitte versuchen Sie es später erneut!",
        "companyNotFound": "Firma nicht gefunden"
      },
      "validations": {
        "pleaseSelectTheBusiness": "Bitte wählen Sie das Unternehmen aus",
        "nameShouldNotEmpty": "Name sollte nicht leer sein",
        "validName": "Name sollte keine Sonderzeichen und Zahlen enthalten",
        "validNameLength": "Name sollte mindestens zwei Zeichen lang sein",
        "phoneNumberShouldNotEmpty": "Telefonnummer sollte nicht leer sein",
        "validPhone": "Bitte geben Sie eine gültige Telefonnummer ein",
        "pleaseSelectTheRole": "Bitte wählen Sie die Rolle aus",
        "passwordLeast8": "Das Passwort ist mindestens 8 Zeichen lang",
        "passwordLeastUppercase": "Das Passwort enthält mindestens einen Großbuchstaben",
        "passwordLeastLowercase": "Das Passwort enthält mindestens einen Kleinbuchstaben",
        "passwordLeastSpecial": "Das Passwort enthält mindestens ein Sonderzeichen",
        "countryCodePhone": "starte mit dem Ländercode",
        "otpShouldNotEmpty": "OTP sollte nicht leer sein",
        "validOtp": "Bitte geben Sie ein gültiges OTP ein",
        "codeShouldNotEmpty": "Der Code sollte nicht leer sein",
        "validCode": "Bitte trage einen korrekten Code ein"
      }
    },
    "bookings": {
      "ui": {
        "noUpcomingBookings": "Derzeit sind keine zukünftigen Buchungen verfügbar!",
        "failedToLoadUpcomingBookings": "Fehler beim Abrufen der Liste der zukünftigen Buchungen!",
        "selectStylist": "Wählen Sie einen Stylisten aus",
        "contactNumber": "Kontakt Nummer",
        "customerName": "Kundenname",
        "selectService": "Wählen Sie einen Service aus",
        "noHistoryBookings": "Derzeit sind keine vergangenen Buchungen verfügbar!",
        "failedToLoadPastBookings": "Fehler beim Abrufen der Liste der vergangenen Buchungen!",
        "failedToReschedule": "Neuplanung fehlgeschlagen!",
        "reschedulePleaseSelectTime": "#6482 Fehler: Bitte Zeit auswählen",
        "cantRescheculePastTime": "Eine Buchung in der Vergangenheit kann nicht neu geplant werden!",
        "selectTable": "Tisch auswählen",
        "addNewBooking": "Neue Buchung",
        "goBackHome": "Wieder nach Hause gehen",
        "selectType": "Wählen Sie einen Typ aus",
        "history": "Historie",
        "tomorrow ": "Morgen",
        "upcomingBookingTab": "Bevorstehende",
        "historyBookingTab": "Geschichte",
        "todayBooking": "Heute",
        "tomorrowBooking": "Heute",
        "yesterdayBooking": "Gestern",
        "pastBooking": "Vergangenheit"
      },
      "validations": {
        "noHistoryBookings": "Derzeit sind keine vergangenen Buchungen verfügbar!",
        "pleaseSelectAStylist": "Bitte wählen Sie den Stylisten aus",
        "pleaseEnterNumberOfCustomer": "Bitte geben Sie die Anzahl der Kunden ein",
        "maxCustomerLimitExceed": "Gästelimit erreicht",
        "selectTableFirst": "Bitte wählen Sie zuerst die Tabelle aus"
      },
      "errors": {
        "serverError": "Serverfehler",
        "getBookingListFailed": "Anfrage fehlgeschlagen. Stellen Sie sicher, dass Ihre Verbindung Internetzugang hat"
      },
      "close_booking": {
        "closedSuccessfully": "Erfolgreich geschlossen!",
        "closeBooking": "Speichern",
        "notesAdditionalDetails": "Notizen und zusätzliche Details",
        "selectDateTo": "Datum bis auswählen",
        "dateTo": "Datum bis",
        "description": "Zeitslots nach Dienstleistungen oder Zeit schließen.",
        "critical": {
          "serviceBasedBlock": "Servicebasiert (Schnell)",
          "notAvailable": "Nicht verfügbar",
          "holiday": "Urlaub",
          "appHoliday": "Offline (geschl. Gesellschaft)",
          "timeBasedBlock": "Zeitbasiert",
          "blockType": "Typ",
          "serviceUnavailable": "Dienst nicht verfügbar"
        },
        "closeATimeSlot": "Zeitslot sperren",
        "selectDate": "Datum",
        "serviceDetails": "Details",
        "customerDetails": "Kundendetails",
        "selectService": "Dauer",
        "selectStylist": "Stylist auswählen",
        "selectServices": "Fertig",
        "pleaseSelectServices": "Dienstleistungen auswählen",
        "validation": {
          "selectDate": "Datum auswählen"
        },
        "pleaseSelectStylist": "Wählen Sie Stylistin aus",
        "pleaseSelectTable": "Wählen Sie Tabelle aus",
        "searchServices": "Fertig",
        "searchService": "Dauer",
        "selectTable": "Tisch auswählen",
        "searchTable": "Tisch suchen",
        "searchStylist": "Stylistin suchen",
        "anyStylist": "Beliebiger Stylistin",
        "pickAnyStylist": "Wählen Sie eine verfügbare Stylistin",
        "pickAnyTable": "Wählen Sie einen verfügbaren Tisch",
        "anyTable": "Beliebiger Tisch",
        "noTable": "Keine verfügbaren Tische",
        "noStylist": "Keine verfügbare Stylistin",
        "tableCapacity": "Kapazität {}",
        "selectDateFrom": "Wählen Sie Datum von",
        "alreadyClosed": "Bereits geschlossen"
      },
      "bookingInner": {
        "Cancel": {
          "cancelBooking": "Buchung stornieren",
          "sureCancel": "Sind Sie sicher, dass Sie diese Buchung stornieren möchten?\nDies kann nicht rückgängig gemacht werden. ",
          "SlideToCancel": "Zum Stornieren wischen",
          "cancelHoliday": "Urlaub stornieren",
          "cancelSlot": "Slot abbrechen"
        },
        "bookingDetails": "Buchungsdetails",
        "ui": {
          "min": "{} min",
          "manual_booking": "manuelle_buchung",
          "manualBookingFor": "Manuelle Buchung",
          "bookingByCustomerApp": "Smaboo App",
          "Type": "Typ",
          "Services": "Dienstleistungen",
          "totalBookingDuration": "Gesamtdauer der Buchung",
          "additionalNotes": "Zusätzliche Notizen",
          "noNotesAndAdditionalDetails": "Keine Notizen und zusätzlichen Details",
          "paymentMethod": "Zahlungsmethode",
          "customer": "Kunde",
          "guest": "Gast",
          "call": "Anrufen",
          "assignedTo": "Zugeordnet zu",
          "rescheduleAppointment": "Termin neu planen",
          "cancelBooking": "Buchung stornieren",
          "cancelled": "Storniert",
          "complete": "Abgeschlossen",
          "pending": "Ausstehend",
          "showMoreDetails": "Mehr Details anzeigen",
          "showLessDetails": "Weniger Details anzeigen",
          "customerFeedback": "Kundenfeedback",
          "noCustomerFeedbackYet": "Noch kein Kundenfeedback!",
          "additionalComments": "ausführliche Bewertung",
          "overallExperience": "Gesamteindruck",
          "anonymousUser": "Anonymer Benutzer",
          "completedOn": "Abgeschlossen am {}",
          "bookingByWebApp": "Web-Buchung",
          "selectForDetails": "Wähle eine Buchung aus,\ndamit du die Details sehen kannst",
          "details": "Einzelheiten",
          "manualBooking": "Manuell Erfasst"
        },
        "validation": {
          "selectTime": "Zeit auswählen",
          "selectDateFirst": "Bitte wählen Sie zuerst ein Datum aus",
          "selectUpcomingTime": "Bitte wählen Sie eine bevorstehende Zeit aus"
        }
      },
      "bookingNew": {
        "bookingAddedSuccessfully": "Buchung erfolgreich hinzugefügt",
        "bookingAddedSuccessfullyDescription": "Neue Walk-in-Buchung zum System hinzugefügt, dieser Zeitslot wird für App-basierte Buchungen blockiert",
        "addBooking": "Buchung hinzufügen",
        "customerDetails": "Kundendetails",
        "pleaseSelectDateTime": "Bitte Datum und Uhrzeit auswählen!",
        "serviceDetails": "Service-Details",
        "nameOfCustomer": "Name des Kunden",
        "contactNumber": "Telefonnummer",
        "selectDate": "Datum auswählen",
        "selectTable": "Tisch auswählen",
        "selectArea": "Bereich auswählen",
        "numberCustomers": "Personen",
        "newBooking": "Neue Buchung",
        "newBookingDescription": "Aktivieren und ordnen Sie die Statistiken an, die auf Ihrer Landingpage angezeigt werden sollen",
        "searchArea": "Suchbereich",
        "anotherAssignee": "{} hat einen anderen Beauftragten für die ausgewählte Zeit!",
        "isInactiveArea": "{} ist inaktiver Bereich!",
        "isInactive": "{} ist für die gewählte Zeit inaktiv!",
        "isNotAvailable": "{} ist für die gewählte Zeit nicht verfügbar!",
        "serviceTask": "Serviceaufgabe",
        "anyText": "Beliebig"
      },
      "time_line": {
        "Timeline": "Zeitleiste",
        "bookingTimelineTitle": "Zeitleiste für Buchungen",
        "bookingTimelineDescription": "Die Zeitleiste Ihrer Buchung anzeigen"
      },
      "booking_widget": {
        "service": "x{} Service",
        "services": "x{} Dienstleistungen"
      },
      "filter": {
        "bookingsAssignedTo": "Zugewiesene Buchungen",
        "filterBookings": "Filter für Buchungen",
        "selectDatePeriod": "Zeitraum auswählen",
        "bookingsFromTo": "Buchungen von und bis",
        "durationOfBooking": "Dauer der Buchung",
        "selectYear": "Wählen Sie ein Jahr aus",
        "selectMonth": "Wähle einen Monat"
      }
    },
    "navigationDrawer": {
      "ui": {
        "logout": "Ausloggen",
        "logoutDescription": "Sind Sie sicher, dass Sie sich von Ihrem Konto abmelden möchten?",
        "goToProfie": "Zum Profil gehen",
        "asAdmin": "Als Administrator",
        "asEmployee": "Als Mitarbeiter",
        "scanQr": "QR-Code scannen"
      },
      "alerts": {
        "loggingOut": "Abmelden"
      }
    },
    "customer_list": {
      "ui": {
        "title": "Kunden",
        "search_here": "Suche",
        "booked": "Gebucht",
        "showUsersBookings": "Alle {} Buchungen \nanzeigen",
        "totalBookings": "Buchungen \ninsgesamt",
        "webBookings": "Webbuchungen",
        "mobileBookings": "Mobile Buchungen",
        "dob": "Geburtsdatum",
        "firstBooking": "Erste Buchung",
        "lastBooking": "Letzte Buchung",
        "noNotesAdded": "Keine Notizen hinzugefügt"
      },
      "alerts": {
        "noCustomerListData": "Derzeit keine verfügbaren Daten!",
        "getCustomerListFailed": "Anfrage fehlgeschlagen. Stellen Sie sicher, dass Ihre Verbindung Internetzugang hat"
      },
      "customerTitle": "Kunden",
      "totalBookings": "Gesamtzahl der Buchungen",
      "customerFavourite": "{} hat",
      "selectforDetailsBookings": "Wählen Sie einen Kunden aus,\num ihre Details und Buchungen zu sehen",
      "pluralName": "{}'s",
      "showingBookings": "Buchungen anzeigen",
      "joined": "Beigetreten"
    },
    "customer_filter_list": {
      "ui": {
        "title": "Kunden filtern",
        "byStylistAssigned": "Nach Stylist zugeordnet",
        "showAll": "Alle anzeigen",
        "bookings": "Buchungen",
        "clearAll": "Alle löschen",
        "showFiltered": "Gefilterte anzeigen"
      },
      "specificDate": "Bestimmtes Datum",
      "selectMonth": "Monat auswählen",
      "selectCustomDate": "Benutzerdefiniertes Datum auswählen",
      "selectYear": "Jahr auswählen",
      "showBooking": "Buchung anzeigen"
    },
    "changeDefaultPassword": {
      "ui": {
        "title1": "Sicherheit",
        "subTitle1": "Bitte ändern Sie Ihr Standardpasswort.",
        "defaultPassword": "Standardpasswort",
        "newPassword": "Neues Passwort",
        "reTypeNewPassword": "Neues Passwort erneut eingeben",
        "change": "Ändern"
      },
      "alerts": {
        "passwordResetFailed": "Passwort zurücksetzen fehlgeschlagen"
      }
    },
    "calendar": {
      "ui": {
        "totalBookings": "Ihre Buchungen",
        "preparationTime": "Vorbereitungszeit",
        "postProcessingTime": "Nachbearbeitungszeit",
        "holiday": "Feiertag",
        "notAvailable": "Nicht verfügbar",
        "appHoliday": "App-Feiertag",
        "noEvents": "Keine Ereignisse für heute",
        "bookings": "Buchungen",
        "totalEvents": "Gesamtereignisse",
        "chooseCalendar": "Kalender auswählen",
        "birthday": "Geburtstag",
        "birthdays": "Geburtstage",
        "noEventsA": "Keine Ereignisse"
      },
      "notes": {
        "validation": {
          "noteTitle": "Bitte stellen Sie sicher, dass Sie einen Notentitel eingeben, bevor Sie speichern",
          "notesDescription": "Bitte stellen Sie sicher, dass Sie eine Notizbeschreibung eingeben, bevor Sie speichern"
        },
        "ui": {
          "noteTitle": "Titel",
          "noNotesFound": "Keine Notizen gefunden",
          "saveNote": "Notiz speichern",
          "savedNotes": "Gespeicherte Notizen",
          "notes": "Notizen"
        }
      }
    },
    "team_list": {
      "team_filter": {
        "todayBookings": "Mit heutigen Buchungen anzeigen",
        "yesterdayBookings": "Mit gestrigen Buchungen anzeigen",
        "tomorrowBookings": "Mit morgigen Buchungen anzeigen",
        "filterMembers": "Mitglieder filtern",
        "membersToDisplay": "Anzuzeigende Mitglieder",
        "bookings": "Buchungen",
        "otherOptions": "Andere",
        "membersNotActive": "Mitglieder nicht aktiv",
        "showFiltered": "Gefilterte anzeigen",
        "notActive": "Nicht aktiv",
        "atLeastOne": "Bitte wählen Sie mindestens eine Filteroption aus",
        "noItems": "Es gibt keine Elemente für die ausgewählten Filter",
        "notFound": "Ergebnisse nicht gefunden"
      },
      "ui": {
        "title": "Team verwalten",
        "results": "Ergebnisse",
        "showingFiltered": "Gefilterte Darstellung",
        "selectToSee": "Wähle einen Mitarbeit",
        "activeAsEmployee": "Aktiv als Mitarbeiter",
        "activeAsAssignee": "Aktiv als Bevollmächtigter",
        "changeStatus": "Status ändern",
        "deactivateMemberAssignee": "Status ändern",
        "deactivateMemberAssigneeDescription": "Sind Sie sicher, dass Sie {} vorübergehend deaktivieren möchten? Das Mitglied erhält in Zukunft keine Buchungen mehr.",
        "deactivateMemberEmployee": "Status ändern",
        "deactivateMemberEmployeeDescription": "Sind Sie sicher, dass Sie {} vorübergehend deaktivieren möchten? Das Mitglied erhält in Zukunft keine Buchungen mehr.",
        "memberFutureBookings": "Das Mitglied hat zukünftige Buchungen!",
        "showPastBookings": "Frühere Buchungen anzeigen",
        "showUpcomingBookings": "Aktuelle Buchungen anzeigen",
        "upcomingBookings": "Kommende Buchungen",
        "pastBookings": "Frühere Buchungen"
      },
      "alerts": {
        "notApproved": "Der Administrator hat dieses Mitglied noch nicht genehmigt",
        "changeStatus": "Status ändern",
        "activateMember": "Sind Sie sicher, dass Sie {} vorübergehend aktivieren möchten? Das Mitglied erhält in Zukunft keine Buchungen mehr."
      }
    },
    "notifications": {
      "title": "Benachrichtigungen",
      "today": "Heute",
      "yesterday": "Gestern",
      "clearAllRead": "Alle gelesenen löschen",
      "older": "Älter",
      "tomorrow": "Morgen",
      "notificationTypes": {
        "appointmentReminder": "Sie haben eine Terminerinnerung",
        "canceledReservation": "Eine Reservierung storniert",
        "newFriendActivity": "Ein neuer Freund-Aktivität",
        "newFriendFeedback": "Ein neues Feedback, das von einem Ihrer Freunde hinzugefügt wurde",
        "newFriend": "Du hast einen neuen Freund",
        "newReservation": "Du hast eine neue Buchung",
        "newStoreOpened": "Ein neues Geschäft wird eröffnet",
        "smabooWelcome": "Willkommen bei smaboo",
        "bookingRescheduled": "Reservierung wird verschoben",
        "notificationSlotTimeOn": "Am:",
        "closeTimeslot": "Ein Zeitfenster wurde geschlossen",
        "employeeStatusChanged": "Der Mitarbeiterstatus wurde geändert",
        "into": "unter",
        "assigneeStatusChanged": "Der Status des Beauftragten wurde geändert",
        "scheduledLeave": "Einen Urlaub geplant"
      }
    },
    "search": {
      "ui": {
        "recentSearches": "Letzte Suchanfragen",
        "customers": "Kunden",
        "employees": "Mitarbeiter",
        "bookings": "Buchungen",
        "noResultFound": "Kein Ergebnis gefunden",
        "searchResult": "Suchergebnis",
        "pullDownToResearch": "Zur Recherche nach unten ziehen"
      }
    },
    "settings": {
      "ui": {
        "language": "Sprache",
        "settings": "Einstellungen",
        "notifications": "Benachrichtigungen",
        "calendarSync": "Kalender Synchronisation",
        "customizeStats": "Statistiken anpassen",
        "helpAndFAQ": "Help & FAQ",
        "reportAndContact": "Kontakt",
        "calendarSyncUI": {
          "description": "Sie können Ihren Standardkalender synchronisieren\nSie verwenden mit smaboo",
          "noCalendars": "Keine Gerätekalender verfügbar!",
          "connect": "Verbinden",
          "removeAllPermission": "Alle Berechtigungen entfernen",
          "addAllPermission": "Alle Berechtigungen hinzufügen"
        },
        "contactUsUI": {
          "title": "Kontaktiere uns",
          "decsription": "Für mehr Informationen besuche ",
          "contact": "Telefon",
          "email": "E-Mail",
          "goToSupport": "Zum Support gehen",
          "reportAnIssue": "Problem melden",
          "reportAnIssueDescription": "Aktivieren und ordnen Sie die Statistiken, die auf Ihrer Landingpage angezeigt werden sollen",
          "yourInquiryHere": "Was möchtest du uns mitteilen?",
          "send": "Senden",
          "chat": "Plaudern"
        },
        "notificationsUI": {
          "title": "Benachrichtigungen",
          "descriptionMobileView": "Legen Sie Ihre Einstellungen für Benachrichtigungen und Warnungen fest",
          "descriptionTabView": "Steuerung der Benachrichtigungen, die Sie im Zusammenhang mit Buchungen erhalten möchten",
          "emailNotifications": "Email Benachrichtigung",
          "pushNotifications": "Push Benachrichtigung"
        },
        "helpAndSupport": "Help & FAQ",
        "moreInformation ": "Weitere Informationen finden Sie auf unserer Website smaboo.com/busines",
        "general": "Allgemein",
        "german": "German",
        "english": "English",
        "notificationDescription": "Bestimme, welche Benachrichtigungen du zu deinen Buchungen haben möchtest",
        "calendarSyncDescription": "Du kannst deine Kalender auswählen, in denen deine smaboo Termine angezeigt werden sollen",
        "freqQuestion ": "Häufigste Fragen",
        "mostAskedQuestion": "Meistgestellte Frage"
      },
      "selectOptionSettings": "Wähle einen Menüpunkt um die Einstellungen zu bearbeiten"
    },
    "home": {
      "ui": {
        "statsTitle": "Statistik",
        "todayBookingsTitle": "Buchungen heute",
        "latestActivity": "Letzte Aktivität",
        "readMore": "Mehr lesen",
        "goToStats": "Zu den Statistiken",
        "hello": "Hallo"
      },
      "alerts": {
        "noStatisticsAvailable": "Keine Statistiken verfügbar",
        "noTodayBookingsAvailable": "Derzeit keine Buchungen verfügbar!",
        "noLatestActivity": "Derzeit keine neuesten Aktivitäten verfügbar"
      }
    },
    "onboard": {
      "ui": {
        "onboardTitle": "Ihr Buchungskalender",
        "skipButton": "Überspringen",
        "nextButton": "Weiter",
        "contactSupport": "Support kontaktieren",
        "registerOrLoginDescription": "Ihre Aktivität kann später über die Einstellungen geändert werden.",
        "createNewAccount": "Neues Konto erstellen",
        "rateExperience": "Wenn du ein Problem hast, schreibe uns oder rufe uns direkt an.",
        "visitInfoLeft": "Besuchen Sie ",
        "visitInfoRight": " um weitere Informationen zu erhalten"
      }
    },
    "signIn": {
      "ui": {
        "title": "Hallo! Anmelden.",
        "email": "Mailadresse",
        "password": "Passwort",
        "forgotPassword": "Passwort vergessen?",
        "description": "Bitte melde dich mit deinem Business Account an. Du hast noch keinen Account? ",
        "registerHere": "Registriere dich hier",
        "rememberMe": "Mich erinnern",
        "forgotPasswordOtp": "Geben Sie Ihre E-Mail-Adresse ein und wir senden Ihnen OTP, um Ihr Passwort zurückzusetzen.",
        "forgotPasswordEnterOtp": "Geben Sie das erhaltene OTP in die von Ihnen eingegebene E-Mail ein."
      }
    },
    "inquiry": {
      "validation": {
        "descriptionEmpty": "Beschreibung darf nicht leer sein",
        "issueType": "Bitte wählen Sie einen Berichtstyp aus",
        "descriptionLength": "Die Beschreibung muss mehr als 3 Zeichen enthalten",
        "issueSent": "Deine Info wurde erfolgreich an smaboo gesendet. Wir werden uns schnellstmöglich bei dir melden. Entschuldigung für die Unannehmlichkeiten."
      },
      "formFields": {
        "phoneNumber": "Telefonnummer"
      }
    },
    "splash": {
      "enterOTP": "Geben Sie den empfangenen OTP ein.",
      "forgotPassword": "Passwort vergessen.",
      "enterNewPassword": "Neues Passwort eingeben",
      "enterReceivedPassword": "Geben Sie das empfangene Passwort ein.",
      "faqLink": "Besuchen Sie {} für weitere Informationen zu Features und Funktionen",
      "enterYourNewPassword": "Gib dein neues Passwort ein",
      "firstItemTitle": "Sofortige\nBenachrichtigungen",
      "firstItemDescrption": "Vestibulum efficitur auctor nisl, eget faucibus nunc laoreet a. Nullam varius arcu a ex auctor finibus. Morbi lobortis nisi id nisi tincidunt, et hendrerit enim pretium.\n\nVestibulum efficitur auctor nisl, eget faucibus nunc laoreet a. Nullam varius arcu",
      "secondItemTitle": "Ihr \nBuchungskalender",
      "secondItemDescrption": "Vestibulum efficitur auctor nisl, eget faucibus nunc laoreet a. Nullam varius arcu a ex auctor finibus. Morbi lobortis nisi id nisi tincidunt, et hendrerit enim pretium."
    },
    "profiles": {
      "selectTime": "Zeit auswählen",
      "selectTimeTo": "Zeit bis",
      "selectTimeFrom": "Uhrzeit",
      "failedToLoadVendorProfile": "Das Laden des Anbieterprofils ist fehlgeschlagen",
      "failedToLoadProfileDetails": "Profildetails konnten nicht geladen werden!",
      "vendorsProfile": "Anbieterprofil",
      "goToProfile": "Profil",
      "asAdmin": "Admin",
      "asEmployee": "Mitarbeiter",
      "ui": {
        "editProfie": "Store Bearbeiten",
        "updateProfile": "D: Ändere die Angaben auf Deiner Buchungsseite. Für eine ausführliche Bearbeitung Deines Geschäftes von z.B. Bildern, Öffnungszeiten etc. Besuche bitte die ",
        "updateProfileHeading": "Aktualisieren",
        "updateSuccess": "Erfolg aktualisieren",
        "address": "Adresse",
        "description": "Beschreibung",
        "amenities": "Ausstattung",
        "paymentAccepted": "Zahlungen akzeptiert in",
        "loadingAddress": "Adresse wird geladen",
        "workingHours": "Arbeitszeit",
        "acceptedPayments": "Akzeptierte Zahlungen",
        "yourProfile": "Dein Profil",
        "storeProfile": "Profil speichern",
        "activeSince": "Aktiv seit",
        "showMyStats": "Meine Statistiken anzeigen",
        "completeProfile": "Vervollständige dein Profil ! Du bist fast am Ziel!",
        "accountType": "Konto Typ",
        "socialsHeading": "Soziale Medien und Links",
        "blockForToday": "Blockbuchungen für heute"
      },
      "vendorProfile": "Dein Store",
      "vendorInformation": "Information",
      "vendorReviews": "Bewertungen",
      "adminFeature": "nur für Admin",
      "editVendor": "Anbieter bearbeiten",
      "weekends": "Wochenenden",
      "weekdays": "Wochentage",
      "storeName": "Shopname",
      "admin": "Admin-Funktion",
      "blockedBookings": "Buchungen für heute erfolgreich blockiert",
      "unblockedBookings": "Buchungen für heute freigegeben",
      "website": "Webseite"
    },
    "loginRegisterSuccess": {
      "ui": {
        "loginSuccessDescription": "Herzlichen Glückwunsch, du hast dich erfolgreich in der smaboo Business App angemeldet. Mach dich bereit, deine Buchungen zu verwalten, Statistiken einzusehen, Angebote an Deine Kunden und Gäste zu schicken und ihnen so einen erstklassigen Service zu bieten.",
        "loginSuccessTitle": "Willkommen bei\nsmaboo business",
        "registerSuccessTitle": "Anmeldung abgeschlossen\nAnfrage erfolgreich gesendet",
        "registerSuccessDescription": "Großartig! Ihre Registrierung war erfolgreich. Bitte überprüfen Sie Ihre E-Mail auf Ihr temporäres Passwort. Verwenden Sie es, um sich im System anzumelden und Ihr eigenes Passwort festzulegen. Vielen Dank, dass Sie sich für unsere Buchungsplattform entschieden haben.",
        "takeMeBack": "Bring mich zurück",
        "visitFaqLeft": "Sieh dir unsere",
        "visitFaqRight": "für weitere Informationen rund um die Funktionen an."
      }
    },
    "bottomNavBar": {
      "scanQR": "QR-Code",
      "logOut": "Ausloggen",
      "home": "Home",
      "calendar": "Kalender"
    },
    "contactSupport": {
      "contactReportDescription": "Du hast eine Frage? Kein Problem, melde dich bei uns und wir kümmern uns schnellstmöglich.",
      "contactReport": "Wo drückt der Schuh?",
      "reportSent": "Bericht gesendet",
      "reportSentDescription": "Deine Info wurde erfolgreich an smaboo gesendet. Wir werden uns schnellstmöglich bei dir melden. Entschuldigung für die Unannehmlichkeiten.",
      "smabooBusinessURL": "smaboo.com/business",
      "backToHome": "Fertig"
    },
    "statistics": {
      "allStatistics": "Alle Statistiken",
      "allStatDescriptionTab": "Drücken Sie auf eine Statistik, um weitere Details anzuzeigen",
      "allStatDescription": "Zeigen Sie Ihre Geschäftsstatistiken an",
      "completedBookings": "Abgeschlossene Buchungen",
      "cancelledBookings": "Stornierte Buchungen",
      "activeEmployee": "Aktive Mitarbeiter",
      "statistics": "Statistiken",
      "overallBookings": "Gesamtbuchungen",
      "overallBookingsDescription": "Wählen Sie unten die Statistiken aus, die Sie sehen möchten",
      "showStatsOf": "Statistiken anzeigen von",
      "overallPerformance": "Gesamtleistung",
      "today": "Heute",
      "myStats": "Meine Statistiken",
      "noStatisticsAvailableFor": "Keine Statistiken verfügbar für",
      "bookingsUnder": "buchungen unter",
      "allNumbersAreAccurate": "Alle Zahlen sind basierend auf der Aktivität genau",
      "weekStatistics": "Woche",
      "monthStats": "Monat",
      "yearStats": "Jahr",
      "statTypePending": "Ausstehend",
      "statTypeCancel": "Stornieren",
      "statTypeComplete": "Stornieren",
      "statTitles": {
        "completedBookings": "Abgeschlossene Buchungen",
        "cancelledBookings": "Stornierte Buchungen",
        "activeEmployee": "Aktiver Mitarbeiter",
        "todayTotalBookings": "Heute Gesamtbuchungen",
        "todaysCancelledBookings": "Die heutigen stornierten Buchungen"
      },
      "statSubtitles": {
        "today": "Heute",
        "yesterday": "Gestern",
        "lastWeek": "Letzte Woche",
        "lastMonth": "Im vergangenen Monat",
        "lastYear": "Letztes Jahr",
        "lastThreeMonths": "Letzte 3 Monate",
        "overall": "Gesamt"
      }
    },
    "socialMedia": {
      "social": "Sozialen Medien"
    },
    "scanQr": {
      "ui": {
        "title": "QR Code scannen",
        "description": "Bitte scannen den QR beim Kunden oder Gast auf dem Mobiltelefon um die Buchungsdetails zu erhalten",
        "lookingForQr": "QR-Code gesucht",
        "cancelScan": "zurück"
      }
    }
  },
  "common": {
    "ui": {
      "noDataAvailableNow": "Keine verfügbaren Daten im Moment!",
      "cancel": "Abbrechen",
      "confirm": "Bestätigen",
      "continue": "Fortsetzen",
      "emailAddress": "E-Mail Adresse",
      "pleaseWait": "Bitte warten",
      "back": "Zurück",
      "clear": "Löschen",
      "service": "Sergice",
      "services": "Sergices",
      "details": "Details",
      "search": "Suche",
      "searchHere": "Suche",
      "ok": "OK",
      "appVersion": "Version {}",
      "home": "Home",
      "calendar": "Kalender",
      "bookings": "Buchungen",
      "customers": "Kunden",
      "statistics": "Statistiken",
      "manage": "Team",
      "settings": "Einstellungen",
      "dateTime": {
        "justNow": "gerade eben",
        "minutesAgo": "vor {} Minuten",
        "hoursAgo": "vor {} Stunden",
        "today": "Heute",
        "yesterday": "Gestern",
        "tomorrow": "Morgen"
      },
      "maxWords": "{} Zeichen",
      "signIn": "Anmelden",
      "visitForMoreInformation": "Besuchen Sie {}, um weitere Informationen zu erhalten",
      "send": "Senden",
      "goBack": "Zurück",
      "contactSupport": "Support kontaktieren",
      "120_words": "120 Zeichen",
      "team": "Team",
      "close": "Schließen",
      "view": "Anzeigen",
      "phoneNumber": "Telefonnummer",
      "upcoming": "Anstehend",
      "past": "Vergangen",
      "complete": "Abgeschlossen",
      "success": "Erfolg!",
      "status": "Status",
      "joined": "Beigetreten",
      "active": "Aktiv",
      "deactivated": "Deaktiviert",
      "noRecentSearch": "Keine aktuelle Suche",
      "noName": "Kein Name",
      "reservation": "Reservierung",
      "zeroMinBooking": "0-Minuten-Buchung",
      "galley": "Galerie",
      "camera": "Kamera",
      "profileUpdateSuccess": "Glückwunsch! Ihr Profil wurde mit den neuesten Informationen aktualisiert",
      "history": "Geschichte",
      "all": "Alle",
      "yesContinue": "Ja, weiter",
      "attention": "Aufmerksamkeit!",
      "overriddenText": "Diese Reservierung wird mit den anderen überschrieben! Sind Sie sicher, dass Sie fortfahren?",
      "weekdays": {
        "monday": "Montag",
        "tuesday": "Dienstag",
        "wednesday": "Mittwoch",
        "thursday": "Donnerstag",
        "friday": "Freitag",
        "saturday": "Samstag",
        "sunday": "Sonntag"
      }
    },
    "failures": {
      "noInternetConnection": "Keine Internetverbindung",
      "checkInternetConnection": "Bitte überprüfen Sie Ihre Internetverbindung und versuchen Sie es erneut",
      "sessionExpired": "Sitzung abgelaufen! Bitte melden Sie sich erneut an",
      "someThingWentWrong": "Etwas ist schief gelaufen. Bitte versuchen Sie es später erneut!",
      "noPermissionGranted": "Keine Berechtigung erteilt!",
      "dataFetchFailed": "Datenabruf fehlgeschlagen. Bitte versuchen Sie es später erneut!",
      "error": "Error",
      "notAvailable": "Not Available"
    },
    "validations": {
      "emailShouldNotEmpty": "E-Mail sollte nicht leer sein",
      "enterValidEmail": "Bitte gib eine gültige E-Mai Adresse ein",
      "passwordShouldNotEmpty": "Bitte geben Sie Ihr Passwort ein",
      "passwordsNotMatch": "Passwörter stimmen nicht überein",
      "addressShouldntbeEmpty": "Adresse sollte nicht leer sein",
      "address3Length": "Adresse muss mehr als 3 Zeichen enthalten",
      "areaSelect": "Wählen Sie einen Bereich",
      "assigneeSelect": "Wählen Sie einen Beauftragten",
      "select": "Auswählen",
      "fillFields": "Bitte füllen Sie alle Felder aus"
    },
    "others": {
      "languageCode": "de"
    },
    "time": {
      "min": "{} min",
      "january": "Januar",
      "february": "Februar",
      "march": "März",
      "april": "April",
      "may": "Mai",
      "june": "Juni",
      "july": "Juli",
      "august": "August",
      "september": "September",
      "october": "Oktober",
      "november": "November",
      "december": "Dezember",
      "minutes": "minuten",
      "hour": "stunde",
      "hours": "stunden",
      "days": "tage",
      "day": "tag",
      "ago": "Vor {}",
      "second": "zweite",
      "seconds": "Sekunden"
    }
  }
};
static const Map<String,dynamic> en_US = {
  "errors": {
    "server": {
      "requestCancelled": "Request to the server was cancelled.",
      "connectionTimeOut": "Connection timed out. Try again or later!",
      "receiveTimeout": "Receiving timeout occurred. Try again or later!",
      "sendTimeout": "Request send timeout. . Try again or later!",
      "socketException": "Request failed. Make sure your connection has internet access.",
      "unexpectedError": "Unexpected error occurred!",
      "someThingWentWrong": "Something went wrong!",
      "badRequest": "Bad request!",
      "authenticationFail": "Authentication failed. Please Login again!",
      "authenticatedUser": "The authenticated user is not allowed to access the specified API endpoint.",
      "urlNotFound": "The requested resource does not exist!",
      "invalidMethod": "Method not allowed. Please check the Allow header for the allowed HTTP methods.",
      "unsupportedMediaType": "Unsupported media type. The requested content type or version number is invalid.",
      "dataValidationFailed": "Data validation failed!",
      "toManyRequests": "Too many requests!",
      "serverError": "Internal server error. Please contact admin!",
      "unhandledStatusCode": "Oops something went wrong! Error {}",
      "hasAnotherBooking": "The company has another booking for request Time. Please try another time slot!",
      "hasClosedTime": "The company has closed during the requested time slot. Please try another time slot!",
      "notFoundMail": "This email is not found!",
      "failedToVerifyEmail": "Failed to verify email!",
      "companyNotFound": "Company not found!"
    },
    "errorLaunchApp": "Error while launching the app",
    "noPageFound": "No Page found"
  },
  "features": {
    "signUp": {
      "ui": {
        "title": "Sign up",
        "subTitle": "You activity can be changed through\nSettings later.",
        "selectBusiness": "Select Business",
        "selectRole": "Select Role",
        "yourName": "Your Name",
        "mobileNumber": "Mobile Number",
        "selectBusinessSearchHint": "Type the name of Business & city",
        "countryPickerTitle": "Typing to search country",
        "alertTitle": "Business Registration Code",
        "codeHere": "Enter code here",
        "alertSubTitle": "Enter the Business Registration Code given by the Business"
      },
      "alerts": {
        "pleaseWait": "Please Wait",
        "registrationFailed": "Registration Failed",
        "getBusinessCardListFailed": "Data fetching failed. Please try again later!",
        "companyNotFound": "Company not found"
      },
      "validations": {
        "pleaseSelectTheBusiness": "Please select the business",
        "nameShouldNotEmpty": "Name shouldn't be empty",
        "validName": "Name shouldn't contains special characters & numbers",
        "validNameLength": "Name should be at least two characters",
        "phoneNumberShouldNotEmpty": "Phone Number shouldn't be empty",
        "validPhone": "Please enter a valid phone number",
        "pleaseSelectTheRole": "Please select the role",
        "passwordLeast8": "The password is at least 8 characters long",
        "passwordLeastUppercase": "The password has at least one uppercase letter",
        "passwordLeastLowercase": "The password has at least one lowercase letter",
        "passwordLeastSpecial": "The password has at least one special character",
        "countryCodePhone": "Make sure the phone number starts with country code",
        "otpShouldNotEmpty": "OTP shouldn't be empty",
        "validOtp": "Please enter a valid OTP",
        "codeShouldNotEmpty": "Code shouldn't be empty",
        "validCode": "Please enter a valid code"
      }
    },
    "bookings": {
      "ui": {
        "noUpcomingBookings": "No upcoming bookings available right now!",
        "failedToLoadUpcomingBookings": "Failed to get upcoming booking list!",
        "selectStylist": "Select a Stylist",
        "contactNumber": "Contact Number",
        "customerName": "Customer Name",
        "selectService": "Select a Service",
        "noHistoryBookings": "No history bookings available right now!",
        "failedToLoadPastBookings": "Failed to get past booking list!",
        "failedToReschedule": "Failed to Reschedule!",
        "reschedulePleaseSelectTime": "#6482 Error: Please Select Time",
        "cantRescheculePastTime": "Can't reschedule a booking in past time!",
        "selectTable": "Select a Table",
        "addNewBooking": "Add New Booking",
        "goBackHome": "Go back Home",
        "selectType": "Select a Type",
        "history": "History",
        "tomorrow ": "Tomorrow",
        "upcomingBookingTab": "Upcoming",
        "historyBookingTab": "History",
        "todayBooking": "Today",
        "tomorrowBooking": "Tomorrow",
        "yesterdayBooking": "Yesterday",
        "pastBooking": "Past"
      },
      "validations": {
        "pleaseSelectAStylist": "Please select the stylist",
        "pleaseEnterNumberOfCustomer": "Please enter the number of customer",
        "noHistoryBookings": "No History bookings available right now!",
        "maxCustomerLimitExceed": "Max customer limit exceed",
        "selectTableFirst": "Please select table first"
      },
      "errors": {
        "serverError": "Server Error",
        "getBookingListFailed": "Request failed. Make sure your connection has internet access"
      },
      "close_booking": {
        "closedSuccessfully": "Closed Successfully!",
        "closeBooking": "Close Booking",
        "notesAdditionalDetails": "Notes and Additional Details",
        "selectDateTo": "Select Date To",
        "dateTo": "Date To",
        "description": "Close timeslots by services or time.",
        "critical": {
          "serviceBasedBlock": "Service Based Block",
          "notAvailable": "Not Available",
          "holiday": "Holiday",
          "appHoliday": "App Booking Holiday",
          "timeBasedBlock": "Time Based Block",
          "blockType": "Block Type",
          "serviceUnavailable": "Service Unavailable"
        },
        "closeATimeSlot": "Close a Time Slot",
        "selectDate": "Select Date",
        "serviceDetails": "Service Details",
        "customerDetails": "Customer Details",
        "selectService": "Select Service",
        "selectStylist": "Select Stylists",
        "selectServices": "Select Services",
        "pleaseSelectServices": "Select Services",
        "validation": {
          "selectDate": "Select a date"
        },
        "pleaseSelectStylist": "Select Stylist",
        "pleaseSelectTable": "Select Table",
        "searchServices": "Search Services",
        "searchService": "Search Service",
        "selectTable": "Select Tables",
        "searchTable": "Search Table",
        "searchStylist": "Search Stylist",
        "anyStylist": "Any Stylist",
        "pickAnyStylist": "Pick any available stylist",
        "pickAnyTable": "Pick any available table",
        "anyTable": "Any Table",
        "noTable": "No available tables",
        "noStylist": "No available stylist",
        "tableCapacity": "Capacity {}",
        "selectDateFrom": "Select Date From",
        "alreadyClosed": "Already closed"
      },
      "bookingInner": {
        "Cancel": {
          "cancelBooking": "Cancel Booking",
          "sureCancel": "Are you sure you want to cancel this booking?\nYou will not be able to undo this.",
          "SlideToCancel": "Slide to Cancel",
          "cancelHoliday": "Cancel Holiday",
          "cancelSlot": "Cancel Slot"
        },
        "bookingDetails": "Booking Details",
        "ui": {
          "min": "{} min",
          "manual_booking": "manual_booking",
          "manualBookingFor": "Manual Booking",
          "bookingByCustomerApp": "Smaboo app",
          "Type": "Type",
          "Services": "Services",
          "totalBookingDuration": "Tot Booking Duration",
          "additionalNotes": "Additional Notes",
          "noNotesAndAdditionalDetails": "No Notes and Additional Details",
          "paymentMethod": "Payment Method",
          "customer": "Customer",
          "guest": "Guest",
          "call": "Call",
          "assignedTo": "Assigned to",
          "rescheduleAppointment": "Reschedule Appointment",
          "cancelBooking": "Cancel Booking",
          "cancelled": "Cancelled",
          "complete": "Complete",
          "pending": "Pending",
          "showMoreDetails": "Show More Details",
          "showLessDetails": "Show Less Details",
          "customerFeedback": "Customer Feedback",
          "noCustomerFeedbackYet": "No customer feedback yet!",
          "additionalComments": "Additional Comments",
          "overallExperience": "Overall Experience",
          "anonymousUser": "Anonymous User",
          "completedOn": "Completed on {}",
          "bookingByWebApp": "Web booking",
          "selectForDetails": "Select a booking to see\ntheir details",
          "details": "Details",
          "manualBooking": "Manual Booking"
        },
        "validation": {
          "selectTime": "Select a time",
          "selectDateFirst": "Please select date first",
          "selectUpcomingTime": "Please select an upcoming time"
        }
      },
      "bookingNew": {
        "bookingAddedSuccessfully": "Booking added successfully",
        "bookingAddedSuccessfullyDescription": "New walk-in booking added to the system, this time slot will be blocked for app based bookings",
        "addBooking": "Add Booking",
        "customerDetails": "Customer Details",
        "pleaseSelectDateTime": "Please select date and time!",
        "serviceDetails": "Service Details",
        "nameOfCustomer": "Name of Customer",
        "contactNumber": "Contact Number",
        "selectDate": "Select Date",
        "selectTable": "Select a Table",
        "selectArea": "Select Areas",
        "numberCustomers": "Number of Customers",
        "newBooking": "New Booking",
        "newBookingDescription": "Tick and arrange the stats to be shown on your landing page",
        "searchArea": "Search Area",
        "anotherAssignee": "{} has another assignee for the selected time!",
        "isInactiveArea": "{} is inactive area!",
        "isInactive": "{} is inactive for the selected time!",
        "isNotAvailable": "{} is not available for the selected time!",
        "serviceTask": "Service Task",
        "anyText": "Any"
      },
      "time_line": {
        "Timeline": "Timeline",
        "bookingTimelineTitle": "Booking Timeline",
        "bookingTimelineDescription": "View the timeline of your booking"
      },
      "booking_widget": {
        "service": "x{} Service",
        "services": "x{} Services"
      },
      "filter": {
        "bookingsAssignedTo": "Bookings Assigned to",
        "filterBookings": "Filter Bookings",
        "selectDatePeriod": "Select date period",
        "bookingsFromTo": "Bookings from and to",
        "durationOfBooking": "Duration of the Booking",
        "selectYear": "Select a year",
        "selectMonth": "Select Month"
      }
    },
    "navigationDrawer": {
      "ui": {
        "logout": "Logout",
        "logoutDescription": "Are you sure you want to logout of your account?",
        "goToProfie": "Go to Profile",
        "asAdmin": "As Admin",
        "asEmployee": "As Employee",
        "scanQr": "Scan QR Code"
      },
      "alerts": {
        "loggingOut": "Logging Out"
      }
    },
    "customer_list": {
      "ui": {
        "title": "Customers",
        "search_here": "Search Here",
        "booked": "Booked",
        "showUsersBookings": "Show all {}'s \nBookings",
        "totalBookings": "Total number\nof Bookings",
        "webBookings": "Web Bookings",
        "mobileBookings": "Mobile Bookings",
        "dob": "Date of Birth",
        "firstBooking": "First Booking",
        "lastBooking": "Last Booking",
        "noNotesAdded": "No notes added"
      },
      "alerts": {
        "noCustomerListData": "No available data right now!",
        "getCustomerListFailed": "Request failed. Make sure your connection has internet access"
      },
      "customerTitle": "Customers",
      "totalBookings": "Total number of Bookings",
      "customerFavourite": "{} has",
      "selectforDetailsBookings": "Select a customer\nto see their details and bookings",
      "pluralName": "{}'s",
      "showingBookings": "Showing Bookings",
      "joined": "Joined"
    },
    "customer_filter_list": {
      "ui": {
        "title": "Filter Customers",
        "byStylistAssigned": "By Stylist Assigned",
        "showAll": "Show all",
        "bookings": "Bookings",
        "clearAll": "Clear all",
        "showFiltered": "Show Filtered"
      },
      "specificDate": "Specific Date",
      "selectMonth": "Select Month",
      "selectCustomDate": "Select a Custom Date",
      "selectYear": "Select Year",
      "showBooking": "Show Booking"
    },
    "changeDefaultPassword": {
      "ui": {
        "title1": "Security",
        "subTitle1": "Please Change Your Default Password.",
        "defaultPassword": "Default Password",
        "newPassword": "New Password",
        "reTypeNewPassword": "Re-type New Password",
        "change": "Change"
      },
      "alerts": {
        "passwordResetFailed": "Password reset failed"
      }
    },
    "calendar": {
      "ui": {
        "totalBookings": "Your Bookings",
        "preparationTime": "Preparation Time",
        "postProcessingTime": "Post Processing Time",
        "holiday": "Holiday",
        "notAvailable": "Not Available",
        "appHoliday": "App Holiday",
        "noEvents": "No events for today",
        "bookings": "Bookings",
        "totalEvents": "Total Events",
        "chooseCalendar": "Choose Calendar",
        "birthday": "Birthday",
        "birthdays": "Birthdays",
        "noEventsA": "No events"
      },
      "notes": {
        "validation": {
          "noteTitle": "Please make sure you enter a note title before saving",
          "notesDescription": "Please make sure you enter a note description before saving"
        },
        "ui": {
          "noteTitle": "Note Title",
          "noNotesFound": "No Notes Found",
          "saveNote": "Save Note",
          "savedNotes": "Saved Notes",
          "notes": "Notes"
        }
      }
    },
    "team_list": {
      "team_filter": {
        "todayBookings": "Show with Today’s Bookings",
        "yesterdayBookings": "Show with Yesterday’s Bookings",
        "tomorrowBookings": "Show with Tomorrow’s Bookings",
        "filterMembers": "Filter Members",
        "membersToDisplay": "Members to Display",
        "bookings": "Bookings",
        "otherOptions": "Other",
        "membersNotActive": "Members not active",
        "showFiltered": "Show Filtered",
        "notActive": "Not Active",
        "atLeastOne": "Please select at least one filter option",
        "noItems": "There are no items for the selected filters",
        "notFound": "Results not found"
      },
      "ui": {
        "title": "Manage Team",
        "results": "Results",
        "showingFiltered": "Showing Filtered",
        "selectToSee": "Select a Team Member\nto see their details and bookings",
        "activeAsEmployee": "Active as Employee",
        "activeAsAssignee": "Active as Assignee",
        "changeStatus": "Change Status",
        "deactivateMemberAssignee": "Change Status",
        "deactivateMemberAssigneeDescription": "Are you sure you want to deactivate {} temporarily, The member wont recieve any future bookings.",
        "deactivateMemberEmployee": "Status ändern",
        "deactivateMemberEmployeeDescription": "Are you sure you want to deactivate {} temporarily, The member wont recieve any future bookings.",
        "memberFutureBookings": "Member has future bookings!",
        "showPastBookings": "Show Past Bookings",
        "showUpcomingBookings": "Show Current Bookings",
        "upcomingBookings": "Upcoming Bookings",
        "pastBookings": "Past Bookings"
      },
      "alerts": {
        "notApproved": "The administrator still not approve this member",
        "changeStatus": "Change Status",
        "activateMember": "Are you sure you want to activate {} temporarily, The member wont receive any future bookings."
      }
    },
    "notifications": {
      "title": "Notifications",
      "today": "Today",
      "yesterday": "Yesterday",
      "clearAllRead": "Clear all Read",
      "older": "Older",
      "tomorrow": "Tomorrow",
      "notificationTypes": {
        "appointmentReminder": "You have an appointment reminder",
        "canceledReservation": "A reservation was cancelled",
        "newFriendActivity": "A New Friend Activity",
        "newFriendFeedback": "New feedback was added by one of your friend",
        "newFriend": "You have a new friend",
        "newReservation": "You have a new booking",
        "newStoreOpened": "New business opened",
        "smabooWelcome": "Welcome to smaboo",
        "bookingRescheduled": "Reservation rescheduled",
        "notificationSlotTimeOn": "On:",
        "closeTimeslot": "A timeslot was closed",
        "employeeStatusChanged": "Employee status was changed",
        "into": "into",
        "assigneeStatusChanged": "Assignee status was changed",
        "scheduledLeave": "Scheduled a leave"
      }
    },
    "search": {
      "ui": {
        "recentSearches": "Recent Searches",
        "customers": "Customers",
        "employees": "Employees",
        "bookings": "Bookings",
        "noResultFound": "No result found",
        "searchResult": "Search Result",
        "pullDownToResearch": "Pull down to Research"
      }
    },
    "settings": {
      "ui": {
        "language": "Language",
        "settings": "Settings",
        "notifications": "Notifications",
        "calendarSync": "Calendar Sync",
        "customizeStats": "Customize Stats",
        "helpAndFAQ": "Help and FAQ",
        "reportAndContact": "Report and Contact",
        "calendarSyncUI": {
          "description": "You can sync your default calendar\nyou use with smaboo",
          "noCalendars": "No device calendars available!",
          "connect": "Connect",
          "removeAllPermission": "Remove all Permission",
          "addAllPermission": "Add all Permission"
        },
        "contactUsUI": {
          "title": "Contact Us",
          "decsription": "For more Information visit our website",
          "contact": "Contact",
          "email": "Email",
          "goToSupport": "Go to support",
          "reportAnIssue": "Report an Issue",
          "reportAnIssueDescription": "Tick and arrange the stats to be shown\non your landing page",
          "yourInquiryHere": "Your Inquiry Here",
          "send": "Send",
          "chat": "Chat"
        },
        "notificationsUI": {
          "title": "Notifications",
          "descriptionMobileView": "Set your preference for alerts and\nnotifications",
          "descriptionTabView": "Control your notifications alerts you want to recieve related to bookings",
          "emailNotifications": "Email Notification",
          "pushNotifications": "Push Notification"
        },
        "helpAndSupport": "Help and Support",
        "moreInformation ": "For more Information visit our website smaboo.com/business",
        "general": "General",
        "german": "Deutsch",
        "english": "Englisch",
        "notificationDescription": "Control your notifications alerts you want to recieve related to bookings",
        "calendarSyncDescription": "You can sync your default calendar you use with smaboo",
        "freqQuestion ": "Frequently asked Questions",
        "mostAskedQuestion": "Most Asked Question"
      },
      "selectOptionSettings": "Select an option to see its settings"
    },
    "home": {
      "ui": {
        "statsTitle": "Quick Stats",
        "todayBookingsTitle": "Todays Bookings",
        "latestActivity": "Latest Activity",
        "readMore": "Read More",
        "goToStats": "Go to Stats",
        "hello": "Hello"
      },
      "alerts": {
        "noStatisticsAvailable": "No statistics available",
        "noTodayBookingsAvailable": "No today bookings available right now!",
        "noLatestActivity": "No latest activities available right now"
      }
    },
    "onboard": {
      "ui": {
        "onboardTitle": "Your bookings\ncalendar",
        "skipButton": "Skip",
        "nextButton": "Next",
        "contactSupport": "Contact Support",
        "registerOrLoginDescription": "You activity can be changed through Settings later.",
        "createNewAccount": "Create a New Account",
        "rateExperience": "Rate Your Experience and leave a comment to ensure consistant quality.",
        "visitInfoLeft": "Visit ",
        "visitInfoRight": " for more \ninformation"
      }
    },
    "signIn": {
      "ui": {
        "title": "Hello! Sign in.",
        "email": "Your Email",
        "password": "Enter Your Password",
        "forgotPassword": "Forgot Your Password ?",
        "description": "Please Sign in to Your business account. Don't have an account yet? ",
        "registerHere": "Register here",
        "rememberMe": "Remember me",
        "forgotPasswordOtp": "Enter your email address and we'll send OTP to reset your password.",
        "forgotPasswordEnterOtp": "Enter the received OTP in the email you entered."
      }
    },
    "inquiry": {
      "validation": {
        "descriptionEmpty": "Description shouldn't be empty",
        "issueType": "Please select a report issue type",
        "descriptionLength": "Description needs to be more than 3 characters",
        "issueSent": "Your issue report has been sent successfuly to smaboo, we will get in touch soon.sorry for the inconvenience"
      },
      "formFields": {
        "phoneNumber": "Phone Number"
      }
    },
    "splash": {
      "enterOTP": "Enter the received OTP.",
      "forgotPassword": "Forgot Password.",
      "enterNewPassword": "Enter New Password",
      "enterReceivedPassword": "Enter the received Password.",
      "faqLink": "Visit {} for more information about features & functions",
      "enterYourNewPassword": "Enter Your New Password",
      "firstItemTitle": "Instant\nnotifications",
      "firstItemDescrption": "Vestibulum efficitur auctor nisl, eget faucibus nunc laoreet a. Nullam varius arcu a ex auctor finibus. Morbi lobortis nisi id nisi tincidunt, et hendrerit enim pretium.\n\nVestibulum efficitur auctor nisl, eget faucibus nunc laoreet a. Nullam varius arcu",
      "secondItemTitle": "Your bookings\ncalendar",
      "secondItemDescrption": "Vestibulum efficitur auctor nisl, eget faucibus nunc laoreet a. Nullam varius arcu a ex auctor finibus. Morbi lobortis nisi id nisi tincidunt, et hendrerit enim pretium."
    },
    "profiles": {
      "selectTime": "Select Time",
      "selectTimeTo": "Select Time To",
      "selectTimeFrom": "Select Time From",
      "failedToLoadVendorProfile": "Failed to load the Vendor Profile",
      "failedToLoadProfileDetails": "Failed to load Profile Details!",
      "ui": {
        "editProfie": "Edit Profile",
        "updateProfile": "Change the details on your booking page. For detailed editing of your shop, e.g. pictures, opening hours etc. Please visit the ",
        "updateProfileHeading": "Update Profile",
        "updateSuccess": "Update Success",
        "address": "Address",
        "description": "Description",
        "amenities": "Amenities",
        "paymentAccepted": "Payments Accepted in",
        "loadingAddress": "Loading Address",
        "workingHours": "Working Hours",
        "acceptedPayments": "Accepted Payments",
        "yourProfile": "Your Profile",
        "storeProfile": "Store Profile",
        "activeSince": "Active since",
        "showMyStats": "Show My Stats",
        "completeProfile": "Complete Your Profile ! You are almost there!",
        "accountType": "Account Type",
        "socialsHeading": "Social Media and Links",
        "blockForToday": "Block Bookings for Today"
      },
      "vendorsProfile": "Vendor's Profile",
      "goToProfile": "Go to Profile",
      "asAdmin": "As Admin",
      "asEmployee": "As Employee",
      "vendorProfile": "Vendor Profile",
      "vendorInformation": "Information",
      "vendorReviews": "Reviews",
      "adminFeature": "This is an Admin Feature",
      "editVendor": "Edit Vendor",
      "weekends": "Weekends",
      "weekdays": "Weekdays",
      "storeName": "Store Name",
      "admin": "Admin Feature",
      "blockedBookings": "Bookings successfully blocked for today",
      "unblockedBookings": "Bookings unblocked for today",
      "website": "Website"
    },
    "loginRegisterSuccess": {
      "ui": {
        "loginSuccessDescription": "Congratulations, you have successfully logged in to the smaboo Vendor App! Get ready to manage your bookings and provide top-notch service to your customers.",
        "loginSuccessTitle": "Welcome to\nsmaboo business",
        "registerSuccessTitle": "Sign up complete\nRequest Sent Successfully",
        "registerSuccessDescription": "Great! Your registration was successful. Please Wait for the vendor administrator to approve your request and check your email for your temporary password. Use it to log in to the system and set your own password. Thank you for choosing our booking platform.",
        "takeMeBack": "Take me Back",
        "visitFaqLeft": "Visit ",
        "visitFaqRight": " for more information about features & functions "
      }
    },
    "bottomNavBar": {
      "scanQR": "Scan QR",
      "logOut": "Log Out",
      "home": "Home",
      "calendar": "Calendar"
    },
    "contactSupport": {
      "contactReportDescription": "Control your notifications alerts you want to receive related to bookings",
      "contactReport": "Contact and Report",
      "reportSent": "Report Sent",
      "reportSentDescription": "Your issue report has been sent successfully to smaboo, we will get in touch soon. Sorry for the inconvenience",
      "smabooBusinessURL": "smaboo.com/business",
      "backToHome": "Back to Home"
    },
    "statistics": {
      "allStatistics": "All Statistics",
      "allStatDescriptionTab": "Press a statistic to see more details",
      "allStatDescription": "View your business statistics",
      "completedBookings": "Completed bookings",
      "cancelledBookings": "Cancelled bookings",
      "activeEmployee": "Active Employees",
      "statistics": "Statistics",
      "overallBookings": "Overall Bookings",
      "overallBookingsDescription": "Select the stats you want to see below",
      "showStatsOf": "Show Stats of",
      "overallPerformance": "Overall performance",
      "today": "Today",
      "myStats": "My Stats",
      "noStatisticsAvailableFor": "No statistics available for",
      "bookingsUnder": "bookings under",
      "allNumbersAreAccurate": "All numbers are accurate based on the activity",
      "weekStatistics": "Week",
      "monthStats": "Month",
      "yearStats": "Year",
      "statTypePending": "Pending",
      "statTypeCancel": "Cancel",
      "statTypeComplete": "Complete",
      "statTitles": {
        "completedBookings": "Completed Bookings",
        "cancelledBookings": "Cancelled Bookings",
        "activeEmployee": "Active Employee",
        "todayTotalBookings": "Today Total Bookings",
        "todaysCancelledBookings": "Today's Cancelled bookings"
      },
      "statSubtitles": {
        "today": "Today",
        "yesterday": "Yesterday",
        "lastWeek": "Last Week",
        "lastMonth": "Last Month",
        "lastYear": "Last Year",
        "lastThreeMonths": "Last 3 Months",
        "overall": "Overall"
      }
    },
    "socialMedia": {
      "social": "Social Media"
    },
    "scanQr": {
      "ui": {
        "title": "QR Scan",
        "description": "Please scan the QR Code for the\nBooking details",
        "lookingForQr": "Looking for QR Code",
        "cancelScan": "Cancel Scan"
      }
    }
  },
  "common": {
    "ui": {
      "noDataAvailableNow": "No available data right now!",
      "cancel": "Cancel",
      "confirm": "Confirm",
      "continue": "Continue",
      "emailAddress": "Email Address",
      "pleaseWait": "Please Wait",
      "back": "Back",
      "clear": "Clear",
      "service": "Service",
      "services": "Services",
      "details": "Details",
      "search": "Search",
      "searchHere": "Search here",
      "ok": "OK",
      "appVersion": "Version {}",
      "home": "Home",
      "calendar": "Calendar",
      "bookings": "Bookings",
      "customers": "Customers",
      "statistics": "Statistics",
      "manage": "Manage",
      "settings": "Settings",
      "dateTime": {
        "justNow": "Just Now",
        "minutesAgo": "{} Minutes ago",
        "hoursAgo": "{} Hours ago",
        "today": "Today",
        "yesterday": "Yesterday",
        "tomorrow": "Tomorrow"
      },
      "maxWords": "{} Words",
      "signIn": "Sign in",
      "visitForMoreInformation": "Visit {} for more information",
      "send": "Send",
      "goBack": "Go back",
      "contactSupport": "Contact Support",
      "120_words": "120 Words",
      "team": "Team",
      "close": "Close",
      "view": "View",
      "phoneNumber": "Phone Number",
      "upcoming": "Upcoming",
      "past": "Past",
      "complete": "Complete",
      "success": "Success!",
      "status": "Status",
      "joined": "Joined",
      "active": "Active",
      "deactivated": "Deactivated",
      "noRecentSearch": "No Recent Search",
      "noName": "No Name",
      "reservation": "Reservation",
      "zeroMinBooking": "0 Minute Booking",
      "galley": "Gallery",
      "camera": "Camera",
      "profileUpdateSuccess": "Congratulations! Your profile has been updated with the latest information",
      "history": "History",
      "all": "All",
      "yesContinue": "Yes, continue",
      "attention": "Attention!",
      "overriddenText": "This reservation will be overridden with the others! Are you sure to continue?",
      "weekdays": {
        "monday": "Monday",
        "tuesday": "Tuesday",
        "wednesday": "Wednesday",
        "thursday": "Thursday",
        "friday": "Friday",
        "saturday": "Saturday",
        "sunday": "Sunday"
      }
    },
    "failures": {
      "noInternetConnection": "No Internet Connection",
      "checkInternetConnection": "Please check your internet connection and try again",
      "sessionExpired": "Session expired! Please log in again",
      "someThingWentWrong": "Something went wrong. Please try again later!",
      "noPermissionGranted": "No permission granted!",
      "dataFetchFailed": "Data fetching failed. Please try again later!",
      "error": "Error",
      "notAvailable": "Not Available"
    },
    "validations": {
      "emailShouldNotEmpty": "Email shouldn't be empty",
      "enterValidEmail": "Please enter a valid email",
      "passwordShouldNotEmpty": "Please enter your password",
      "passwordsNotMatch": "Passwords do not match",
      "addressShouldntbeEmpty": "Address shouldn't be empty",
      "address3Length": "Address needs to be more than 3 characters",
      "areaSelect": "Select a area",
      "assigneeSelect": "Select an assignee",
      "select": "Select",
      "fillFields": "Please fill all the fields"
    },
    "others": {
      "languageCode": "en"
    },
    "time": {
      "min": "{} min",
      "january": "January",
      "february": "February",
      "march": "March",
      "april": "April",
      "may": "May",
      "june": "June",
      "july": "July",
      "august": "August",
      "september": "September",
      "october": "October",
      "november": "November",
      "december": "December",
      "minutes": "minutes",
      "hour": "hour",
      "hours": "hours",
      "days": "days",
      "day": "day",
      "ago": "{} ago",
      "second": "second",
      "seconds": "seconds"
    }
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"de_DE": de_DE, "en_US": en_US};
}
