class ApiEndpoints {
  /// Test Server
  // static const baseUrl = 'https://smaboo.wearedesigners.net/api/';
  // static const baseImageUrl = 'https://smaboo.wearedesigners.net/';

  /// Staging Server
  static const baseUrl = 'https://staging.smaboo.com/api/';
  static const baseImageUrl = 'https://staging.smaboo.com/';

  /// Live Server
  // static const baseUrl = '';
  // static const baseImageUrl = '';

  /// API Endpoints

  /// Team Module
  static const teamList = 'v1/team/lists?paginate=true';
  static const teamListSearch = 'v1/team/lists?paginate=false&search=';
  static const teamListFiltered = 'v1/team/lists?paginate=false&status=&date=&designation=';
  static const memberProfile = 'v1/team/single-user/';
  static const memberEmployeeStatus = 'v1/team/status-change?type=employee&id=';
  static const memberAssigneeStatus = 'v1/team/status-change?type=assignee&id=';
  static const teamFilterList = 'v1/assignee/designation-lists';
  static const teamMemberBookingUpcoming = 'v1/booking/history/team?upComing=true&paginate=true&limit=6&assignee=&page=';
  static const teamMemberBookingPast = 'v1/booking/history/team?upComing=false&paginate=true&limit=6&assignee=&page=';
  static const teamMemberBookingUpcomingFiltered =
      'v1/booking/history/team?upComing=true&paginate=true&limit=6&assignee=&year=&month=&date=&page=';
  static const teamMemberBookingPastFiltered =
      'v1/booking/history/team?upComing=false&paginate=true&limit=6&assignee=&year=&month=&date=&page=';

  /// Customer Module
  static const customerList = 'v1/customer/customer-lists?paginate=true';
  static const customerListSearch = 'v1/customer/customer-lists?paginate=false&search=';
  static const customerFilteredList = 'v1/customer/customer-lists?paginate=false&service_id=&assignee_id=';
  static const customerProfile = 'v1/customer/single-customer/';
  static const customerFilterList = 'v1/customer/service-assignee-lists';
  static const customerBookings = 'v1/booking/history/customer?bookingType=customer&paginate=true&limit=6&customerId=&page=';
  static const customerBookingsFiltered =
      'v1/booking/history/customer?bookingType=customer&paginate=true&limit=6&customerId=&page=&year=&month=&date=';

  /// Notification Module
  static const notificationsAPI = 'v1/notifications';
  static const notificationsReadAllAPI = 'v1/notifications/read-all';
  static const notificationsReadSingleAPI = 'v1/notifications/read-single/';
  static const notificationTypes = 'v1/notifications/tasks';
  static const subscribeNotification = 'v1/notifications/subscribe';

  /// Booking Module
  static const upcomingBookings = 'v1/booking/history/upcoming?bookingType=&limit=6&paginate=true&page=';
  static const historyBookings = 'v1/booking/history/past?bookingType=&upComing=false&limit=6&paginate=true&page=';
  static const bookingFiltered =
      'v1/booking/history/team?paginate=true&limit=6&page=&assignee=&year=&month=&date=&toDate=&toSlot=&fromSlot=';
  static const bookingDetails = 'v1/booking/';
  static const bookingTimeline = 'v1/booking/history/timeline?booking_id=';
  static const cancelBooking = 'v1/booking/cancel-booking?id=';
  static const rescheduleBooking = 'v1/booking/reshedule-booking';
  static const assigneeService = 'v1/assignee/services';
  static const businessAreaList = 'v1/booking/areas/all';
  static const businessServiceList = 'v1/booking/areas/services';
  static const businessAssigneeList = 'v1/assignee/available-lists';
  static const manualBookingEndPoint = 'v1/booking/manual-booking';
  static const closeBookingEndPoint = 'v1/booking/close-booking-slot';
  static const todayBookings = 'v1/booking/history/upcoming?limit=6&bookingType=&paginate=true&date=&page=';
  static const searchBooking = 'v1/booking/history/team?paginate=true&searchParam=';
  static const holidayTime = 'v1/booking/holiday?time=';

  /// Registration & SignIn
  static const register = 'v1/user/registration';
  static const businessCardList = 'v2/company/lists';
  static const login = 'v1/user/login';
  static const guestInquiry = 'v1/guest/inquiry';
  static const changeDefaultPassword = 'v1/user/reset-password';
  static const businessRegistrationCode = 'v1/user/get-company-by-login-code';

  /// profile Modules
  static const profileDetails = 'v1/profile/details';
  static const updateProfile = 'v1/profile/update';
  static const vendorProfileDetails = 'v1/company/details';
  static const vendorUpdateProfile = 'v1/company/update';
  static const vendorBlockBookingsToday = "v1/company/block/today";

  /// Notes Module
  static const saveNotes = 'v1/notes';
  static const deleteNote = 'v1/notes/delete/';

  /// other
  static const zendesk = 'zendesk/';
  static const helpFAQEndPoint = 'v1/helps';
  static const globalSearch = 'v1/homepage/search';
  static const inquiryList = 'v1/vendor/inquiry-type-lists';
  static const sendInquiry = 'v1/vendor/store-vender-inquiry';

  /// Calendar
  static const calendarEvents = 'v1/event/calendar';
  static const allNotes = 'v1/notes';
  static const calendarEventTypes = 'v1/event/types';

  ///Forgot Password
  static const forgotPasswordRequest = 'v1/user/otp/request';
  static const forgotPasswordOTPVerify = 'v1/user/otp/verify';
  static const forgotPasswordReset = 'v1/user/password/recover';

  /// Stats Module
  static const stats = 'v1/stats';
  static const allStats = 'v1/stats/all';
  static const statGraph = 'v1/stats/graph';
  static const teamMemberStats = 'v1/stats/member/';
}
