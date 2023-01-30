.class Lcom/android/dialer/app/voicemail/VoicemailErrorManager$1;
.super Landroid/database/ContentObserver;
.source "VoicemailErrorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/voicemail/VoicemailErrorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/voicemail/VoicemailErrorManager;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/voicemail/VoicemailErrorManager;Landroid/os/Handler;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailErrorManager$1;->this$0:Lcom/android/dialer/app/voicemail/VoicemailErrorManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 60
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailErrorManager$1;->this$0:Lcom/android/dialer/app/voicemail/VoicemailErrorManager;

    invoke-static {p1}, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->access$000(Lcom/android/dialer/app/voicemail/VoicemailErrorManager;)V

    return-void
.end method
