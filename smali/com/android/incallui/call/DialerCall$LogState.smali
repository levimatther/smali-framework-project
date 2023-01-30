.class public Lcom/android/incallui/call/DialerCall$LogState;
.super Ljava/lang/Object;
.source "DialerCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/call/DialerCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogState"
.end annotation


# instance fields
.field public callSpecificAppData:Lcom/android/dialer/callintent/CallSpecificAppData;

.field public conferencedCalls:I

.field public contactLookupResult:Lcom/android/dialer/logging/ContactLookupResult$Type;

.field public disconnectCause:Landroid/telecom/DisconnectCause;

.field public duration:J

.field public isIncoming:Z

.field public isLogged:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1886
    iput-boolean v0, p0, Lcom/android/incallui/call/DialerCall$LogState;->isIncoming:Z

    .line 1887
    sget-object v1, Lcom/android/dialer/logging/ContactLookupResult$Type;->UNKNOWN_LOOKUP_RESULT_TYPE:Lcom/android/dialer/logging/ContactLookupResult$Type;

    iput-object v1, p0, Lcom/android/incallui/call/DialerCall$LogState;->contactLookupResult:Lcom/android/dialer/logging/ContactLookupResult$Type;

    .line 1891
    iput v0, p0, Lcom/android/incallui/call/DialerCall$LogState;->conferencedCalls:I

    const-wide/16 v1, 0x0

    .line 1892
    iput-wide v1, p0, Lcom/android/incallui/call/DialerCall$LogState;->duration:J

    .line 1893
    iput-boolean v0, p0, Lcom/android/incallui/call/DialerCall$LogState;->isLogged:Z

    return-void
.end method

.method private static initiationToString(Lcom/android/dialer/callintent/CallSpecificAppData;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 1916
    :cond_0
    sget-object v0, Lcom/android/incallui/call/DialerCall$2;->$SwitchMap$com$android$dialer$callintent$CallInitiationType$Type:[I

    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->getCallInitiationType()Lcom/android/dialer/callintent/CallInitiationType$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dialer/callintent/CallInitiationType$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData;->getCallInitiationType()Lcom/android/dialer/callintent/CallInitiationType$Type;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "Launcher Shortcut"

    return-object p0

    :pswitch_1
    const-string p0, "External"

    return-object p0

    :pswitch_2
    const-string p0, "Quick Contacts"

    return-object p0

    :pswitch_3
    const-string p0, "DialerCall Details"

    return-object p0

    :pswitch_4
    const-string p0, "Voicemail Log"

    return-object p0

    :pswitch_5
    const-string p0, "DialerCall Log Filter"

    return-object p0

    :pswitch_6
    const-string p0, "DialerCall Log"

    return-object p0

    :pswitch_7
    const-string p0, "Regular Search"

    return-object p0

    :pswitch_8
    const-string p0, "Smart Dial"

    return-object p0

    :pswitch_9
    const-string p0, "Remote Directory"

    return-object p0

    :pswitch_a
    const-string p0, "Speed Dial"

    return-object p0

    :pswitch_b
    const-string p0, "Dialpad"

    return-object p0

    :pswitch_c
    const-string p0, "Incoming"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static lookupToString(Lcom/android/dialer/logging/ContactLookupResult$Type;)Ljava/lang/String;
    .locals 1

    .line 1896
    sget-object v0, Lcom/android/incallui/call/DialerCall$2;->$SwitchMap$com$android$dialer$logging$ContactLookupResult$Type:[I

    invoke-virtual {p0}, Lcom/android/dialer/logging/ContactLookupResult$Type;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "Not found"

    return-object p0

    :cond_0
    const-string p0, "Voicemail"

    return-object p0

    :cond_1
    const-string p0, "Emergency"

    return-object p0

    :cond_2
    const-string p0, "Remote"

    return-object p0

    :cond_3
    const-string p0, "Cache"

    return-object p0

    :cond_4
    const-string p0, "Local"

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 1950
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/incallui/call/DialerCall$LogState;->disconnectCause:Landroid/telecom/DisconnectCause;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/incallui/call/DialerCall$LogState;->isIncoming:Z

    .line 1960
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/incallui/call/DialerCall$LogState;->contactLookupResult:Lcom/android/dialer/logging/ContactLookupResult$Type;

    .line 1961
    invoke-static {v2}, Lcom/android/incallui/call/DialerCall$LogState;->lookupToString(Lcom/android/dialer/logging/ContactLookupResult$Type;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/incallui/call/DialerCall$LogState;->callSpecificAppData:Lcom/android/dialer/callintent/CallSpecificAppData;

    .line 1962
    invoke-static {v2}, Lcom/android/incallui/call/DialerCall$LogState;->initiationToString(Lcom/android/dialer/callintent/CallSpecificAppData;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/android/incallui/call/DialerCall$LogState;->duration:J

    .line 1963
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "[%s, isIncoming: %s, contactLookup: %s, callInitiation: %s, duration: %s]"

    .line 1950
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
