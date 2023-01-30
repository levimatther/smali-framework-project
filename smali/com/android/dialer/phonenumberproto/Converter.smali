.class Lcom/android/dialer/phonenumberproto/Converter;
.super Ljava/lang/Object;
.source "Converter.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static pojoToProto(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/dialer/DialerInternalPhoneNumber;
    .locals 3

    .line 28
    invoke-static {}, Lcom/android/dialer/DialerInternalPhoneNumber;->newBuilder()Lcom/android/dialer/DialerInternalPhoneNumber$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->setCountryCode(I)Lcom/android/dialer/DialerInternalPhoneNumber$Builder;

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 33
    sget-object v1, Lcom/android/dialer/phonenumberproto/Converter$1;->$SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource:[I

    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 47
    sget-object v1, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    invoke-virtual {v0, v1}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->setCountryCodeSource(Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;)Lcom/android/dialer/DialerInternalPhoneNumber$Builder;

    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported country code source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_2
    sget-object v1, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    invoke-virtual {v0, v1}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->setCountryCodeSource(Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;)Lcom/android/dialer/DialerInternalPhoneNumber$Builder;

    goto :goto_0

    .line 39
    :cond_3
    sget-object v1, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    invoke-virtual {v0, v1}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->setCountryCodeSource(Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;)Lcom/android/dialer/DialerInternalPhoneNumber$Builder;

    goto :goto_0

    .line 35
    :cond_4
    sget-object v1, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    invoke-virtual {v0, v1}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->setCountryCodeSource(Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;)Lcom/android/dialer/DialerInternalPhoneNumber$Builder;

    .line 55
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 56
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->setExtension(Ljava/lang/String;)Lcom/android/dialer/DialerInternalPhoneNumber$Builder;

    .line 58
    :cond_6
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 59
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->setItalianLeadingZero(Z)Lcom/android/dialer/DialerInternalPhoneNumber$Builder;

    .line 61
    :cond_7
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasNationalNumber()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 62
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->setNationalNumber(J)Lcom/android/dialer/DialerInternalPhoneNumber$Builder;

    .line 64
    :cond_8
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasNumberOfLeadingZeros()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 65
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->setNumberOfLeadingZeros(I)Lcom/android/dialer/DialerInternalPhoneNumber$Builder;

    .line 67
    :cond_9
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 68
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->setPreferredDomesticCarrierCode(Ljava/lang/String;)Lcom/android/dialer/DialerInternalPhoneNumber$Builder;

    .line 70
    :cond_a
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 71
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->setRawInput(Ljava/lang/String;)Lcom/android/dialer/DialerInternalPhoneNumber$Builder;

    .line 73
    :cond_b
    invoke-virtual {v0}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerInternalPhoneNumber;

    return-object p0
.end method

.method static protoToPojo(Lcom/android/dialer/DialerInternalPhoneNumber;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 3

    .line 77
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 78
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasCountryCode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getCountryCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasCountryCodeSource()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 82
    sget-object v1, Lcom/android/dialer/phonenumberproto/Converter$1;->$SwitchMap$com$android$dialer$DialerInternalPhoneNumber$CountryCodeSource:[I

    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getCountryCodeSource()Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 93
    sget-object v1, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_0

    .line 96
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported country code source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getCountryCodeSource()Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_2
    sget-object v1, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_0

    .line 87
    :cond_3
    sget-object v1, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_0

    .line 84
    :cond_4
    sget-object v1, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 100
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasExtension()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 101
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->setExtension(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 103
    :cond_6
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 104
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getItalianLeadingZero()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->setItalianLeadingZero(Z)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 106
    :cond_7
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasNationalNumber()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 107
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getNationalNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 109
    :cond_8
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasNumberOfLeadingZeros()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 110
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getNumberOfLeadingZeros()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNumberOfLeadingZeros(I)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 112
    :cond_9
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 113
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->setPreferredDomesticCarrierCode(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 115
    :cond_a
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasRawInput()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 116
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->setRawInput(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    :cond_b
    return-object v0
.end method
