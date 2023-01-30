.class Lcom/android/dialer/simulator/impl/SimulatorActionProvider$1;
.super Landroid/os/AsyncTask;
.source "SimulatorActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/simulator/impl/SimulatorActionProvider;->populateDatabase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/simulator/impl/SimulatorActionProvider;


# direct methods
.method constructor <init>(Lcom/android/dialer/simulator/impl/SimulatorActionProvider;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/android/dialer/simulator/impl/SimulatorActionProvider$1;->this$0:Lcom/android/dialer/simulator/impl/SimulatorActionProvider;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 128
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/dialer/simulator/impl/SimulatorActionProvider$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 131
    iget-object p1, p0, Lcom/android/dialer/simulator/impl/SimulatorActionProvider$1;->this$0:Lcom/android/dialer/simulator/impl/SimulatorActionProvider;

    invoke-static {p1}, Lcom/android/dialer/simulator/impl/SimulatorActionProvider;->access$000(Lcom/android/dialer/simulator/impl/SimulatorActionProvider;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/simulator/impl/SimulatorContacts;->populateContacts(Landroid/content/Context;)V

    .line 132
    iget-object p1, p0, Lcom/android/dialer/simulator/impl/SimulatorActionProvider$1;->this$0:Lcom/android/dialer/simulator/impl/SimulatorActionProvider;

    invoke-static {p1}, Lcom/android/dialer/simulator/impl/SimulatorActionProvider;->access$000(Lcom/android/dialer/simulator/impl/SimulatorActionProvider;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/simulator/impl/SimulatorCallLog;->populateCallLog(Landroid/content/Context;)V

    .line 133
    iget-object p1, p0, Lcom/android/dialer/simulator/impl/SimulatorActionProvider$1;->this$0:Lcom/android/dialer/simulator/impl/SimulatorActionProvider;

    invoke-static {p1}, Lcom/android/dialer/simulator/impl/SimulatorActionProvider;->access$000(Lcom/android/dialer/simulator/impl/SimulatorActionProvider;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail;->populateVoicemail(Landroid/content/Context;)V

    const/4 p1, 0x0

    return-object p1
.end method
