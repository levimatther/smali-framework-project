.class public final synthetic Lcom/android/dialer/telecom/ICCIDFetchService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/dialer/telecom/ICCIDFetchService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialer/telecom/ICCIDFetchService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/telecom/ICCIDFetchService$$ExternalSyntheticLambda0;->f$0:Lcom/android/dialer/telecom/ICCIDFetchService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/telecom/ICCIDFetchService$$ExternalSyntheticLambda0;->f$0:Lcom/android/dialer/telecom/ICCIDFetchService;

    invoke-virtual {v0}, Lcom/android/dialer/telecom/ICCIDFetchService;->onDestroy()V

    return-void
.end method
