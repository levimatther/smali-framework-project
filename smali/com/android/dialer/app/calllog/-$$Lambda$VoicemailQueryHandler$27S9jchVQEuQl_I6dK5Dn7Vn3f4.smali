.class public final synthetic Lcom/android/dialer/app/calllog/-$$Lambda$VoicemailQueryHandler$27S9jchVQEuQl_I6dK5Dn7Vn3f4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/app/calllog/-$$Lambda$VoicemailQueryHandler$27S9jchVQEuQl_I6dK5Dn7Vn3f4;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/dialer/app/calllog/-$$Lambda$VoicemailQueryHandler$27S9jchVQEuQl_I6dK5Dn7Vn3f4;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/app/calllog/-$$Lambda$VoicemailQueryHandler$27S9jchVQEuQl_I6dK5Dn7Vn3f4;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/-$$Lambda$VoicemailQueryHandler$27S9jchVQEuQl_I6dK5Dn7Vn3f4;->f$1:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/dialer/app/calllog/VoicemailQueryHandler;->lambda$markSingleNewVoicemailAsRead$1(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
