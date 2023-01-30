.class Lcom/android/dialer/app/TctActivity$BufferUnderflowException;
.super Ljava/lang/RuntimeException;
.source "TctActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/TctActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferUnderflowException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x17c6e9b1ef23953eL


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/TctActivity;


# direct methods
.method public constructor <init>(Lcom/android/dialer/app/TctActivity;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/android/dialer/app/TctActivity$BufferUnderflowException;->this$0:Lcom/android/dialer/app/TctActivity;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method
