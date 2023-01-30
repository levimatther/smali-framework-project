.class Lcom/android/dialer/app/voicemail/VoicemailErrorManager$ServiceStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "VoicemailErrorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/voicemail/VoicemailErrorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/voicemail/VoicemailErrorManager;


# direct methods
.method private constructor <init>(Lcom/android/dialer/app/voicemail/VoicemailErrorManager;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailErrorManager$ServiceStateListener;->this$0:Lcom/android/dialer/app/voicemail/VoicemailErrorManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/app/voicemail/VoicemailErrorManager;Lcom/android/dialer/app/voicemail/VoicemailErrorManager$1;)V
    .locals 0

    .line 182
    invoke-direct {p0, p1}, Lcom/android/dialer/app/voicemail/VoicemailErrorManager$ServiceStateListener;-><init>(Lcom/android/dialer/app/voicemail/VoicemailErrorManager;)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0

    .line 186
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailErrorManager$ServiceStateListener;->this$0:Lcom/android/dialer/app/voicemail/VoicemailErrorManager;

    invoke-static {p1}, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->access$000(Lcom/android/dialer/app/voicemail/VoicemailErrorManager;)V

    return-void
.end method
