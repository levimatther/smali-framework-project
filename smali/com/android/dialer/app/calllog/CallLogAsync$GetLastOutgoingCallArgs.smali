.class public Lcom/android/dialer/app/calllog/CallLogAsync$GetLastOutgoingCallArgs;
.super Ljava/lang/Object;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/calllog/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetLastOutgoingCallArgs"
.end annotation


# instance fields
.field public final callback:Lcom/android/dialer/app/calllog/CallLogAsync$OnLastOutgoingCallComplete;

.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/dialer/app/calllog/CallLogAsync$OnLastOutgoingCallComplete;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAsync$GetLastOutgoingCallArgs;->context:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/dialer/app/calllog/CallLogAsync$GetLastOutgoingCallArgs;->callback:Lcom/android/dialer/app/calllog/CallLogAsync$OnLastOutgoingCallComplete;

    return-void
.end method
