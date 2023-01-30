.class public Lcom/android/dialer/callintent/CallIntentBuilder;
.super Ljava/lang/Object;
.source "CallIntentBuilder.java"


# static fields
.field private static lightbringerButtonAppearInCollapsedCallLogItemCount:I

.field private static lightbringerButtonAppearInExpandedCallLogItemCount:I

.field private static lightbringerButtonAppearInSearchCount:I


# instance fields
.field private final callSpecificAppData:Lcom/android/dialer/callintent/CallSpecificAppData;

.field private callSubject:Ljava/lang/String;

.field private isVideoCall:Z

.field private phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/android/dialer/callintent/CallInitiationType$Type;)V
    .locals 0

    .line 77
    invoke-static {p2}, Lcom/android/dialer/callintent/CallIntentBuilder;->createCallSpecificAppData(Lcom/android/dialer/callintent/CallInitiationType$Type;)Lcom/android/dialer/callintent/CallSpecificAppData;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Landroid/net/Uri;Lcom/android/dialer/callintent/CallSpecificAppData;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/android/dialer/callintent/CallSpecificAppData;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/dialer/callintent/CallIntentBuilder;->uri:Landroid/net/Uri;

    .line 48
    invoke-static {p2}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {p2}, Lcom/android/dialer/callintent/CallSpecificAppData;->getCallInitiationType()Lcom/android/dialer/callintent/CallInitiationType$Type;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/callintent/CallInitiationType$Type;->UNKNOWN_INITIATION:Lcom/android/dialer/callintent/CallInitiationType$Type;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 49
    :goto_0
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 53
    invoke-static {p2}, Lcom/android/dialer/callintent/CallSpecificAppData;->newBuilder(Lcom/android/dialer/callintent/CallSpecificAppData;)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object p1

    sget p2, Lcom/android/dialer/callintent/CallIntentBuilder;->lightbringerButtonAppearInExpandedCallLogItemCount:I

    .line 54
    invoke-virtual {p1, p2}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->setLightbringerButtonAppearInExpandedCallLogItemCount(I)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object p1

    sget p2, Lcom/android/dialer/callintent/CallIntentBuilder;->lightbringerButtonAppearInCollapsedCallLogItemCount:I

    .line 56
    invoke-virtual {p1, p2}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->setLightbringerButtonAppearInCollapsedCallLogItemCount(I)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object p1

    sget p2, Lcom/android/dialer/callintent/CallIntentBuilder;->lightbringerButtonAppearInSearchCount:I

    .line 58
    invoke-virtual {p1, p2}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->setLightbringerButtonAppearInSearchCount(I)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object p1

    .line 59
    sput v1, Lcom/android/dialer/callintent/CallIntentBuilder;->lightbringerButtonAppearInExpandedCallLogItemCount:I

    .line 60
    sput v1, Lcom/android/dialer/callintent/CallIntentBuilder;->lightbringerButtonAppearInCollapsedCallLogItemCount:I

    .line 61
    sput v1, Lcom/android/dialer/callintent/CallIntentBuilder;->lightbringerButtonAppearInSearchCount:I

    .line 63
    invoke-static {}, Lcom/android/dialer/performancereport/PerformanceReport;->isRecording()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 65
    invoke-static {}, Lcom/android/dialer/performancereport/PerformanceReport;->getTimeSinceAppLaunch()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->setTimeSinceAppLaunch(J)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object p2

    .line 66
    invoke-static {}, Lcom/android/dialer/performancereport/PerformanceReport;->getTimeSinceFirstClick()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->setTimeSinceFirstClick(J)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object p2

    .line 67
    invoke-static {}, Lcom/android/dialer/performancereport/PerformanceReport;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->addAllUiActionsSinceAppLaunch(Ljava/lang/Iterable;)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object p2

    .line 68
    invoke-static {}, Lcom/android/dialer/performancereport/PerformanceReport;->getActionTimestamps()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->addAllUiActionTimestampsSinceAppLaunch(Ljava/lang/Iterable;)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object p2

    .line 69
    invoke-virtual {p2}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 70
    invoke-static {}, Lcom/android/dialer/performancereport/PerformanceReport;->stopRecording()V

    .line 73
    :cond_1
    invoke-virtual {p1}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/callintent/CallSpecificAppData;

    iput-object p1, p0, Lcom/android/dialer/callintent/CallIntentBuilder;->callSpecificAppData:Lcom/android/dialer/callintent/CallSpecificAppData;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallInitiationType$Type;)V
    .locals 0

    .line 86
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/dialer/util/CallUtil;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Landroid/net/Uri;Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallSpecificAppData;)V
    .locals 0

    .line 82
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/dialer/util/CallUtil;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Landroid/net/Uri;Lcom/android/dialer/callintent/CallSpecificAppData;)V

    return-void
.end method

.method public static clearLightbringerCounts()V
    .locals 1

    const/4 v0, 0x0

    .line 166
    sput v0, Lcom/android/dialer/callintent/CallIntentBuilder;->lightbringerButtonAppearInCollapsedCallLogItemCount:I

    .line 167
    sput v0, Lcom/android/dialer/callintent/CallIntentBuilder;->lightbringerButtonAppearInExpandedCallLogItemCount:I

    .line 168
    sput v0, Lcom/android/dialer/callintent/CallIntentBuilder;->lightbringerButtonAppearInSearchCount:I

    return-void
.end method

.method private static createCallSpecificAppData(Lcom/android/dialer/callintent/CallInitiationType$Type;)Lcom/android/dialer/callintent/CallSpecificAppData;
    .locals 1

    .line 133
    invoke-static {}, Lcom/android/dialer/callintent/CallSpecificAppData;->newBuilder()Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->setCallInitiationType(Lcom/android/dialer/callintent/CallInitiationType$Type;)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/CallSpecificAppData;

    return-object p0
.end method

.method public static getLightbringerButtonAppearInCollapsedCallLogItemCount()I
    .locals 1

    .line 156
    sget v0, Lcom/android/dialer/callintent/CallIntentBuilder;->lightbringerButtonAppearInCollapsedCallLogItemCount:I

    return v0
.end method

.method public static getLightbringerButtonAppearInExpandedCallLogItemCount()I
    .locals 1

    .line 151
    sget v0, Lcom/android/dialer/callintent/CallIntentBuilder;->lightbringerButtonAppearInExpandedCallLogItemCount:I

    return v0
.end method

.method public static getLightbringerButtonAppearInSearchCount()I
    .locals 1

    .line 161
    sget v0, Lcom/android/dialer/callintent/CallIntentBuilder;->lightbringerButtonAppearInSearchCount:I

    return v0
.end method

.method public static increaseLightbringerCallButtonAppearInCollapsedCallLogItemCount()V
    .locals 1

    .line 142
    sget v0, Lcom/android/dialer/callintent/CallIntentBuilder;->lightbringerButtonAppearInCollapsedCallLogItemCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/dialer/callintent/CallIntentBuilder;->lightbringerButtonAppearInCollapsedCallLogItemCount:I

    return-void
.end method

.method public static increaseLightbringerCallButtonAppearInExpandedCallLogItemCount()V
    .locals 1

    .line 138
    sget v0, Lcom/android/dialer/callintent/CallIntentBuilder;->lightbringerButtonAppearInExpandedCallLogItemCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/dialer/callintent/CallIntentBuilder;->lightbringerButtonAppearInExpandedCallLogItemCount:I

    return-void
.end method

.method public static increaseLightbringerCallButtonAppearInSearchCount()V
    .locals 1

    .line 146
    sget v0, Lcom/android/dialer/callintent/CallIntentBuilder;->lightbringerButtonAppearInSearchCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/dialer/callintent/CallIntentBuilder;->lightbringerButtonAppearInSearchCount:I

    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 5

    .line 109
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/dialer/callintent/CallIntentBuilder;->uri:Landroid/net/Uri;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 110
    iget-boolean v1, p0, Lcom/android/dialer/callintent/CallIntentBuilder;->isVideoCall:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "android.telecom.extra.CALL_CREATED_TIME_MILLIS"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 116
    iget-object v2, p0, Lcom/android/dialer/callintent/CallIntentBuilder;->callSpecificAppData:Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-static {v1, v2}, Lcom/android/dialer/callintent/CallIntentParser;->putCallSpecificAppData(Landroid/os/Bundle;Lcom/android/dialer/callintent/CallSpecificAppData;)V

    const-string v2, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    .line 117
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 119
    iget-object v1, p0, Lcom/android/dialer/callintent/CallIntentBuilder;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    if-eqz v1, :cond_1

    const-string v2, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    .line 120
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/callintent/CallIntentBuilder;->callSubject:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/android/dialer/callintent/CallIntentBuilder;->callSubject:Ljava/lang/String;

    const-string v2, "android.telecom.extra.CALL_SUBJECT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    return-object v0
.end method

.method public getCallSpecificAppData()Lcom/android/dialer/callintent/CallSpecificAppData;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/dialer/callintent/CallIntentBuilder;->callSpecificAppData:Lcom/android/dialer/callintent/CallSpecificAppData;

    return-object v0
.end method

.method public setCallSubject(Ljava/lang/String;)Lcom/android/dialer/callintent/CallIntentBuilder;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/dialer/callintent/CallIntentBuilder;->callSubject:Ljava/lang/String;

    return-object p0
.end method

.method public setIsVideoCall(Z)Lcom/android/dialer/callintent/CallIntentBuilder;
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/android/dialer/callintent/CallIntentBuilder;->isVideoCall:Z

    return-object p0
.end method

.method public setPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/callintent/CallIntentBuilder;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/dialer/callintent/CallIntentBuilder;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object p0
.end method
