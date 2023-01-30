.class public final synthetic Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$r3N-lKxmJxIyfvIPah0yMStXVTo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$r3N-lKxmJxIyfvIPah0yMStXVTo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$r3N-lKxmJxIyfvIPah0yMStXVTo;

    invoke-direct {v0}, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$r3N-lKxmJxIyfvIPah0yMStXVTo;-><init>()V

    sput-object v0, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$r3N-lKxmJxIyfvIPah0yMStXVTo;->INSTANCE:Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$r3N-lKxmJxIyfvIPah0yMStXVTo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1}, Lcom/android/dialer/callcomposer/CallComposerActivity;->lambda$sendAndCall$3(Ljava/lang/Throwable;)V

    return-void
.end method
