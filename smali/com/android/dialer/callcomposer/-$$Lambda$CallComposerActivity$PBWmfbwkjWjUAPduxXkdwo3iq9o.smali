.class public final synthetic Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$PBWmfbwkjWjUAPduxXkdwo3iq9o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/dialer/callcomposer/CallComposerActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialer/callcomposer/CallComposerActivity;IIIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$PBWmfbwkjWjUAPduxXkdwo3iq9o;->f$0:Lcom/android/dialer/callcomposer/CallComposerActivity;

    iput p2, p0, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$PBWmfbwkjWjUAPduxXkdwo3iq9o;->f$1:I

    iput p3, p0, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$PBWmfbwkjWjUAPduxXkdwo3iq9o;->f$2:I

    iput p4, p0, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$PBWmfbwkjWjUAPduxXkdwo3iq9o;->f$3:I

    iput p5, p0, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$PBWmfbwkjWjUAPduxXkdwo3iq9o;->f$4:I

    iput-boolean p6, p0, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$PBWmfbwkjWjUAPduxXkdwo3iq9o;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$PBWmfbwkjWjUAPduxXkdwo3iq9o;->f$0:Lcom/android/dialer/callcomposer/CallComposerActivity;

    iget v1, p0, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$PBWmfbwkjWjUAPduxXkdwo3iq9o;->f$1:I

    iget v2, p0, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$PBWmfbwkjWjUAPduxXkdwo3iq9o;->f$2:I

    iget v3, p0, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$PBWmfbwkjWjUAPduxXkdwo3iq9o;->f$3:I

    iget v4, p0, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$PBWmfbwkjWjUAPduxXkdwo3iq9o;->f$4:I

    iget-boolean v5, p0, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$PBWmfbwkjWjUAPduxXkdwo3iq9o;->f$5:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/dialer/callcomposer/CallComposerActivity;->lambda$animateSendAndCall$9$CallComposerActivity(IIIIZ)V

    return-void
.end method
