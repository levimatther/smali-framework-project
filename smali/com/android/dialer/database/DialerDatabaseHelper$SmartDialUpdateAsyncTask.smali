.class Lcom/android/dialer/database/DialerDatabaseHelper$SmartDialUpdateAsyncTask;
.super Landroid/os/AsyncTask;
.source "DialerDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/database/DialerDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartDialUpdateAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/database/DialerDatabaseHelper;


# direct methods
.method private constructor <init>(Lcom/android/dialer/database/DialerDatabaseHelper;)V
    .locals 0

    .line 1282
    iput-object p1, p0, Lcom/android/dialer/database/DialerDatabaseHelper$SmartDialUpdateAsyncTask;->this$0:Lcom/android/dialer/database/DialerDatabaseHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/database/DialerDatabaseHelper;Lcom/android/dialer/database/DialerDatabaseHelper$1;)V
    .locals 0

    .line 1282
    invoke-direct {p0, p1}, Lcom/android/dialer/database/DialerDatabaseHelper$SmartDialUpdateAsyncTask;-><init>(Lcom/android/dialer/database/DialerDatabaseHelper;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1286
    iget-object p1, p0, Lcom/android/dialer/database/DialerDatabaseHelper$SmartDialUpdateAsyncTask;->this$0:Lcom/android/dialer/database/DialerDatabaseHelper;

    invoke-virtual {p1}, Lcom/android/dialer/database/DialerDatabaseHelper;->updateSmartDialDatabase()V

    const/4 p1, 0x0

    return-object p1
.end method
