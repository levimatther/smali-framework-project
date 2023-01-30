.class public final synthetic Lcom/android/voicemail/impl/sync/-$$Lambda$VvmAccountManager$cpAIVXOWBP0IHSPEbRwP3gSxcdE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telecom/PhoneAccountHandle;


# direct methods
.method public synthetic constructor <init>(Landroid/telecom/PhoneAccountHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/voicemail/impl/sync/-$$Lambda$VvmAccountManager$cpAIVXOWBP0IHSPEbRwP3gSxcdE;->f$0:Landroid/telecom/PhoneAccountHandle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/voicemail/impl/sync/-$$Lambda$VvmAccountManager$cpAIVXOWBP0IHSPEbRwP3gSxcdE;->f$0:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v0}, Lcom/android/voicemail/impl/sync/VvmAccountManager;->lambda$removeAccount$1(Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method
