.class enum Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;
.super Ljava/lang/Enum;
.source "VoicemailChangePinActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

.field public static final enum ConfirmNewPin:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

.field public static final enum EnterNewPin:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

.field public static final enum EnterOldPin:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

.field public static final enum Initial:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

.field public static final enum VerifyOldPin:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 116
    new-instance v0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    const-string v1, "Initial"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;->Initial:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    .line 121
    new-instance v0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State$1;

    const-string v1, "EnterOldPin"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;->EnterOldPin:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    .line 158
    new-instance v0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State$2;

    const-string v1, "VerifyOldPin"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;->VerifyOldPin:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    .line 203
    new-instance v0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State$3;

    const-string v1, "EnterNewPin"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;->EnterNewPin:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    .line 249
    new-instance v0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State$4;

    const-string v1, "ConfirmNewPin"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;->ConfirmNewPin:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    .line 110
    sget-object v7, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;->Initial:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    aput-object v7, v1, v2

    sget-object v2, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;->EnterOldPin:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;->VerifyOldPin:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;->EnterNewPin:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;->$VALUES:[Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/voicemail/impl/settings/VoicemailChangePinActivity$1;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;
    .locals 1

    .line 110
    const-class v0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    return-object p0
.end method

.method public static values()[Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;
    .locals 1

    .line 110
    sget-object v0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;->$VALUES:[Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    invoke-virtual {v0}, [Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    return-object v0
.end method


# virtual methods
.method public handleNext(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)V
    .locals 0

    return-void
.end method

.method public handleResult(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;I)V
    .locals 0

    return-void
.end method

.method public onEnter(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)V
    .locals 0

    return-void
.end method

.method public onInputChanged(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)V
    .locals 0

    return-void
.end method

.method public onLeave(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)V
    .locals 0

    return-void
.end method
