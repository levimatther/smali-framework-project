.class public final enum Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;
.super Ljava/lang/Enum;
.source "VoicemailStatusCorruptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;

.field public static final enum Activity:Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;

.field public static final enum Notification:Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 42
    new-instance v0, Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;

    const-string v1, "Activity"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;->Activity:Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;

    .line 43
    new-instance v0, Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;

    const-string v1, "Notification"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;->Notification:Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;

    .line 41
    sget-object v4, Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;->Activity:Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;->$VALUES:[Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;
    .locals 1

    .line 41
    const-class v0, Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;

    return-object p0
.end method

.method public static values()[Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;
    .locals 1

    .line 41
    sget-object v0, Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;->$VALUES:[Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;

    invoke-virtual {v0}, [Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;

    return-object v0
.end method
