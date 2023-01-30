.class public final synthetic Lcom/android/dialershared/bubble/-$$Lambda$7Gz657TZTdd0sU6la4Mzh3AarPQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/dialershared/bubble/Bubble$BubbleFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/dialershared/bubble/-$$Lambda$7Gz657TZTdd0sU6la4Mzh3AarPQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/dialershared/bubble/-$$Lambda$7Gz657TZTdd0sU6la4Mzh3AarPQ;

    invoke-direct {v0}, Lcom/android/dialershared/bubble/-$$Lambda$7Gz657TZTdd0sU6la4Mzh3AarPQ;-><init>()V

    sput-object v0, Lcom/android/dialershared/bubble/-$$Lambda$7Gz657TZTdd0sU6la4Mzh3AarPQ;->INSTANCE:Lcom/android/dialershared/bubble/-$$Lambda$7Gz657TZTdd0sU6la4Mzh3AarPQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createBubble(Landroid/content/Context;)Lcom/android/dialershared/bubble/Bubble;
    .locals 1

    new-instance v0, Lcom/android/dialershared/bubble/Bubble;

    invoke-direct {v0, p1}, Lcom/android/dialershared/bubble/Bubble;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
