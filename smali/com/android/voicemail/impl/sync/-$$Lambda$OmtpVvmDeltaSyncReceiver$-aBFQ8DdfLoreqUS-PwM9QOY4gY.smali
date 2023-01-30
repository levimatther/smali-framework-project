.class public final synthetic Lcom/android/voicemail/impl/sync/-$$Lambda$OmtpVvmDeltaSyncReceiver$-aBFQ8DdfLoreqUS-PwM9QOY4gY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

.field public final synthetic f$1:Landroid/telecom/PhoneAccountHandle;

.field public final synthetic f$2:Lcom/android/voicemail/impl/VoicemailStatus$Editor;

.field public final synthetic f$3:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/voicemail/impl/sync/-$$Lambda$OmtpVvmDeltaSyncReceiver$-aBFQ8DdfLoreqUS-PwM9QOY4gY;->f$0:Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    iput-object p2, p0, Lcom/android/voicemail/impl/sync/-$$Lambda$OmtpVvmDeltaSyncReceiver$-aBFQ8DdfLoreqUS-PwM9QOY4gY;->f$1:Landroid/telecom/PhoneAccountHandle;

    iput-object p3, p0, Lcom/android/voicemail/impl/sync/-$$Lambda$OmtpVvmDeltaSyncReceiver$-aBFQ8DdfLoreqUS-PwM9QOY4gY;->f$2:Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    iput-object p4, p0, Lcom/android/voicemail/impl/sync/-$$Lambda$OmtpVvmDeltaSyncReceiver$-aBFQ8DdfLoreqUS-PwM9QOY4gY;->f$3:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/voicemail/impl/sync/-$$Lambda$OmtpVvmDeltaSyncReceiver$-aBFQ8DdfLoreqUS-PwM9QOY4gY;->f$0:Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    iget-object v1, p0, Lcom/android/voicemail/impl/sync/-$$Lambda$OmtpVvmDeltaSyncReceiver$-aBFQ8DdfLoreqUS-PwM9QOY4gY;->f$1:Landroid/telecom/PhoneAccountHandle;

    iget-object v2, p0, Lcom/android/voicemail/impl/sync/-$$Lambda$OmtpVvmDeltaSyncReceiver$-aBFQ8DdfLoreqUS-PwM9QOY4gY;->f$2:Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    iget-object v3, p0, Lcom/android/voicemail/impl/sync/-$$Lambda$OmtpVvmDeltaSyncReceiver$-aBFQ8DdfLoreqUS-PwM9QOY4gY;->f$3:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/android/voicemail/impl/sync/OmtpVvmDeltaSyncReceiver;->lambda$onReceive$0(Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Landroid/content/Context;)V

    return-void
.end method
