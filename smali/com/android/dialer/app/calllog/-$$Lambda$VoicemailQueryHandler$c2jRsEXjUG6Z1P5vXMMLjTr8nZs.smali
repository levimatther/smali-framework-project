.class public final synthetic Lcom/android/dialer/app/calllog/-$$Lambda$VoicemailQueryHandler$c2jRsEXjUG6Z1P5vXMMLjTr8nZs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/app/calllog/-$$Lambda$VoicemailQueryHandler$c2jRsEXjUG6Z1P5vXMMLjTr8nZs;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/app/calllog/-$$Lambda$VoicemailQueryHandler$c2jRsEXjUG6Z1P5vXMMLjTr8nZs;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/VoicemailQueryHandler;->lambda$markAllNewVoicemailsAsRead$0(Landroid/content/Context;)V

    return-void
.end method
