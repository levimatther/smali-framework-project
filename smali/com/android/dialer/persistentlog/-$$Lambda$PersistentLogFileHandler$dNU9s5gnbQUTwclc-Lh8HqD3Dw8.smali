.class public final synthetic Lcom/android/dialer/persistentlog/-$$Lambda$PersistentLogFileHandler$dNU9s5gnbQUTwclc-Lh8HqD3Dw8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/dialer/persistentlog/-$$Lambda$PersistentLogFileHandler$dNU9s5gnbQUTwclc-Lh8HqD3Dw8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/dialer/persistentlog/-$$Lambda$PersistentLogFileHandler$dNU9s5gnbQUTwclc-Lh8HqD3Dw8;

    invoke-direct {v0}, Lcom/android/dialer/persistentlog/-$$Lambda$PersistentLogFileHandler$dNU9s5gnbQUTwclc-Lh8HqD3Dw8;-><init>()V

    sput-object v0, Lcom/android/dialer/persistentlog/-$$Lambda$PersistentLogFileHandler$dNU9s5gnbQUTwclc-Lh8HqD3Dw8;->INSTANCE:Lcom/android/dialer/persistentlog/-$$Lambda$PersistentLogFileHandler$dNU9s5gnbQUTwclc-Lh8HqD3Dw8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/dialer/persistentlog/PersistentLogFileHandler;->lambda$getLogFiles$0(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
