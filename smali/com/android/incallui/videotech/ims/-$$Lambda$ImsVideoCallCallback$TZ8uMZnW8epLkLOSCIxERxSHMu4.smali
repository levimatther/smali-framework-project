.class public final synthetic Lcom/android/incallui/videotech/ims/-$$Lambda$ImsVideoCallCallback$TZ8uMZnW8epLkLOSCIxERxSHMu4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/videotech/ims/-$$Lambda$ImsVideoCallCallback$TZ8uMZnW8epLkLOSCIxERxSHMu4;->f$0:Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;

    iput p2, p0, Lcom/android/incallui/videotech/ims/-$$Lambda$ImsVideoCallCallback$TZ8uMZnW8epLkLOSCIxERxSHMu4;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/videotech/ims/-$$Lambda$ImsVideoCallCallback$TZ8uMZnW8epLkLOSCIxERxSHMu4;->f$0:Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;

    iget v1, p0, Lcom/android/incallui/videotech/ims/-$$Lambda$ImsVideoCallCallback$TZ8uMZnW8epLkLOSCIxERxSHMu4;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/videotech/ims/ImsVideoCallCallback;->lambda$onSessionModifyResponseReceived$0$ImsVideoCallCallback(I)V

    return-void
.end method
