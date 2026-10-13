.class public final synthetic Lcom/hjq/permissions/PermissionChecker$$ExternalSyntheticApiModelOutline0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Ljava/util/OptionalDouble;)D
    .locals 2

    invoke-virtual {p0}, Ljava/util/OptionalDouble;->getAsDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic m(Ljava/util/concurrent/atomic/DoubleAdder;)D
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAdder;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic m(Landroid/content/pm/ApplicationInfo;)I
    .locals 0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    return p0
.end method

.method public static bridge synthetic m(Landroid/view/accessibility/AccessibilityManager;II)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/widget/Toolbar;)I
    .locals 0

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getTitleMarginStart()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljava/time/LocalDateTime;)I
    .locals 0

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getYear()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljava/util/OptionalInt;)I
    .locals 0

    invoke-virtual {p0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljava/time/Instant;)J
    .locals 2

    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic m(Ljava/util/OptionalLong;)J
    .locals 2

    invoke-virtual {p0}, Ljava/util/OptionalLong;->getAsLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic m(Ljava/util/concurrent/atomic/LongAdder;)J
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAdder;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic m(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 0

    invoke-static {p0, p1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/String;)Landroid/icu/util/TimeZone;
    .locals 0

    invoke-static {p0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/text/StaticLayout$Builder;Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/view/ViewStructure;I)Landroid/view/ViewStructure;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;)Landroid/view/WindowInsets;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/google/android/material/textfield/TextInputLayout;)Landroid/view/autofill/AutofillId;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/time/ZoneId;

    return-object v0
.end method

.method public static bridge synthetic m(Ljava/util/Optional;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/icu/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/CharSequence;)Ljava/time/Duration;
    .locals 0

    invoke-static {p0}, Ljava/time/Duration;->parse(Ljava/lang/CharSequence;)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(J)Ljava/time/Instant;
    .locals 0

    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(JJ)Ljava/time/Instant;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/CharSequence;)Ljava/time/Instant;
    .locals 0

    invoke-static {p0}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/util/Calendar;)Ljava/time/Instant;
    .locals 0

    invoke-virtual {p0}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(III)Ljava/time/LocalDate;
    .locals 0

    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/CharSequence;)Ljava/time/LocalDate;
    .locals 0

    invoke-static {p0}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;
    .locals 0

    invoke-static {p0, p1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/time/LocalDateTime;)Ljava/time/LocalDate;
    .locals 0

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(IIIIII)Ljava/time/LocalDateTime;
    .locals 0

    invoke-static/range {p0 .. p5}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;
    .locals 0

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljava/time/LocalDateTime;
    .locals 0

    check-cast p0, Ljava/time/LocalDateTime;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;
    .locals 0

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m()Ljava/time/LocalTime;
    .locals 1

    sget-object v0, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    return-object v0
.end method

.method public static bridge synthetic m(Ljava/lang/CharSequence;)Ljava/time/Period;
    .locals 0

    invoke-static {p0}, Ljava/time/Period;->parse(Ljava/lang/CharSequence;)Ljava/time/Period;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/String;)Ljava/time/ZoneId;
    .locals 0

    invoke-static {p0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/util/TimeZone;)Ljava/time/ZoneId;
    .locals 0

    invoke-virtual {p0}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;
    .locals 0

    invoke-static {p0}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;
    .locals 0

    invoke-static {p0, p1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m()Ljava/time/format/DateTimeFormatter;
    .locals 1

    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljava/time/temporal/TemporalAccessor;
    .locals 0

    check-cast p0, Ljava/time/temporal/TemporalAccessor;

    return-object p0
.end method

.method public static bridge synthetic m()Ljava/util/Optional;
    .locals 1

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljava/util/Optional;
    .locals 0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m()Ljava/util/OptionalDouble;
    .locals 1

    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic m(D)Ljava/util/OptionalDouble;
    .locals 0

    invoke-static {p0, p1}, Ljava/util/OptionalDouble;->of(D)Ljava/util/OptionalDouble;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljava/util/OptionalDouble;
    .locals 0

    check-cast p0, Ljava/util/OptionalDouble;

    return-object p0
.end method

.method public static bridge synthetic m()Ljava/util/OptionalInt;
    .locals 1

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic m(I)Ljava/util/OptionalInt;
    .locals 0

    invoke-static {p0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljava/util/OptionalInt;
    .locals 0

    check-cast p0, Ljava/util/OptionalInt;

    return-object p0
.end method

.method public static bridge synthetic m()Ljava/util/OptionalLong;
    .locals 1

    invoke-static {}, Ljava/util/OptionalLong;->empty()Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic m(J)Ljava/util/OptionalLong;
    .locals 0

    invoke-static {p0, p1}, Ljava/util/OptionalLong;->of(J)Ljava/util/OptionalLong;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljava/util/OptionalLong;
    .locals 0

    check-cast p0, Ljava/util/OptionalLong;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljava/util/concurrent/atomic/DoubleAdder;
    .locals 0

    check-cast p0, Ljava/util/concurrent/atomic/DoubleAdder;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljava/util/concurrent/atomic/LongAdder;
    .locals 0

    check-cast p0, Ljava/util/concurrent/atomic/LongAdder;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/graphics/drawable/InsetDrawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/graphics/drawable/RippleDrawable;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setRadius(I)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/icu/text/DateFormat;Landroid/icu/util/TimeZone;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/view/View;Landroid/view/ViewStructure;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/view/ViewStructure;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewStructure;->setChildCount(I)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/view/ViewStructure;Landroid/view/autofill/AutofillId;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/view/ViewStructure;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/widget/EditText;Landroid/os/LocaleList;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setImeHintLocales(Landroid/os/LocaleList;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setKeyboardNavigationCluster(Z)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/google/android/material/textfield/TextInputLayout;Landroid/view/ViewStructure;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    return-void
.end method

.method public static bridge synthetic m()Z
    .locals 1

    invoke-static {}, Landroid/os/Environment;->isExternalStorageLegacy()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic m(Landroid/app/AlarmManager;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/app/NotificationManager;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/content/pm/PackageManager;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/os/PowerManager;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/time/chrono/ChronoZonedDateTime;

    return p0
.end method

.method public static bridge synthetic m(Ljava/util/Optional;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljava/util/OptionalDouble;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/OptionalDouble;->isPresent()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljava/util/OptionalInt;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljava/util/OptionalLong;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/OptionalLong;->isPresent()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$1(Landroid/widget/Toolbar;)I
    .locals 0

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getTitleMarginEnd()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$1(Ljava/time/LocalDateTime;)I
    .locals 0

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$1()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/time/LocalDateTime;

    return-object v0
.end method

.method public static bridge synthetic m$1(Ljava/lang/Object;)Ljava/util/Optional;
    .locals 0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public static bridge synthetic m$1(Lcom/google/android/material/textfield/TextInputLayout;Landroid/view/ViewStructure;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    return-void
.end method

.method public static bridge synthetic m$1()Z
    .locals 1

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic m$1(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/time/LocalDateTime;

    return p0
.end method

.method public static bridge synthetic m$2(Landroid/widget/Toolbar;)I
    .locals 0

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getTitleMarginTop()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$2(Ljava/time/LocalDateTime;)I
    .locals 0

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$2()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/time/Period;

    return-object v0
.end method

.method public static bridge synthetic m$2(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/util/OptionalDouble;

    return p0
.end method

.method public static bridge synthetic m$3(Landroid/widget/Toolbar;)I
    .locals 0

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getTitleMarginBottom()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$3(Ljava/time/LocalDateTime;)I
    .locals 0

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getNano()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$3()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/time/Duration;

    return-object v0
.end method

.method public static bridge synthetic m$3(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/util/OptionalInt;

    return p0
.end method

.method public static bridge synthetic m$4()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/time/Instant;

    return-object v0
.end method

.method public static bridge synthetic m$4(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/util/Optional;

    return p0
.end method

.method public static bridge synthetic m$5()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/time/LocalDate;

    return-object v0
.end method

.method public static bridge synthetic m$5(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/util/OptionalLong;

    return p0
.end method

.method public static bridge synthetic m$6()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/util/OptionalInt;

    return-object v0
.end method

.method public static bridge synthetic m$6(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/util/concurrent/atomic/LongAdder;

    return p0
.end method

.method public static bridge synthetic m$7()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/util/OptionalLong;

    return-object v0
.end method

.method public static bridge synthetic m$7(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/util/concurrent/atomic/DoubleAdder;

    return p0
.end method

.method public static bridge synthetic m$8()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/util/OptionalDouble;

    return-object v0
.end method
