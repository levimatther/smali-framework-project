.class public final synthetic Lcom/android/dialer/postcall/-$$Lambda$PostCall$-EKt8P9xNJMLZNB7koiWygqo5a4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/postcall/-$$Lambda$PostCall$-EKt8P9xNJMLZNB7koiWygqo5a4;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/dialer/postcall/-$$Lambda$PostCall$-EKt8P9xNJMLZNB7koiWygqo5a4;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/dialer/postcall/-$$Lambda$PostCall$-EKt8P9xNJMLZNB7koiWygqo5a4;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/dialer/postcall/-$$Lambda$PostCall$-EKt8P9xNJMLZNB7koiWygqo5a4;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/dialer/postcall/-$$Lambda$PostCall$-EKt8P9xNJMLZNB7koiWygqo5a4;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/dialer/postcall/-$$Lambda$PostCall$-EKt8P9xNJMLZNB7koiWygqo5a4;->f$2:Z

    invoke-static {v0, v1, v2, p1}, Lcom/android/dialer/postcall/PostCall;->lambda$promptUserToSendMessage$0(Landroid/app/Activity;Ljava/lang/String;ZLandroid/view/View;)V

    return-void
.end method
