.class synthetic Lcom/android/dialer/phonenumberproto/Converter$1;
.super Ljava/lang/Object;
.source "Converter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/phonenumberproto/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$dialer$DialerInternalPhoneNumber$CountryCodeSource:[I

.field static final synthetic $SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 82
    invoke-static {}, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->values()[Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/dialer/phonenumberproto/Converter$1;->$SwitchMap$com$android$dialer$DialerInternalPhoneNumber$CountryCodeSource:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    invoke-virtual {v2}, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/android/dialer/phonenumberproto/Converter$1;->$SwitchMap$com$android$dialer$DialerInternalPhoneNumber$CountryCodeSource:[I

    sget-object v3, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    invoke-virtual {v3}, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/android/dialer/phonenumberproto/Converter$1;->$SwitchMap$com$android$dialer$DialerInternalPhoneNumber$CountryCodeSource:[I

    sget-object v4, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    invoke-virtual {v4}, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/android/dialer/phonenumberproto/Converter$1;->$SwitchMap$com$android$dialer$DialerInternalPhoneNumber$CountryCodeSource:[I

    sget-object v5, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    invoke-virtual {v5}, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 33
    :catch_3
    invoke-static {}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->values()[Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/dialer/phonenumberproto/Converter$1;->$SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource:[I

    :try_start_4
    sget-object v5, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {v5}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/android/dialer/phonenumberproto/Converter$1;->$SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource:[I

    sget-object v4, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {v4}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/android/dialer/phonenumberproto/Converter$1;->$SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource:[I

    sget-object v1, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/android/dialer/phonenumberproto/Converter$1;->$SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource:[I

    sget-object v1, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
