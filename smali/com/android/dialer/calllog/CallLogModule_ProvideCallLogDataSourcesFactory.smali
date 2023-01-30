.class public final Lcom/android/dialer/calllog/CallLogModule_ProvideCallLogDataSourcesFactory;
.super Ljava/lang/Object;
.source "CallLogModule_ProvideCallLogDataSourcesFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/dialer/calllog/datasources/DataSources;",
        ">;"
    }
.end annotation


# instance fields
.field private final contactsDataSourceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/dialer/calllog/datasources/contacts/ContactsDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final systemCallLogDataSourceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/dialer/calllog/datasources/contacts/ContactsDataSource;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogModule_ProvideCallLogDataSourcesFactory;->systemCallLogDataSourceProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogModule_ProvideCallLogDataSourcesFactory;->contactsDataSourceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/dialer/calllog/CallLogModule_ProvideCallLogDataSourcesFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/dialer/calllog/datasources/contacts/ContactsDataSource;",
            ">;)",
            "Lcom/android/dialer/calllog/CallLogModule_ProvideCallLogDataSourcesFactory;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/android/dialer/calllog/CallLogModule_ProvideCallLogDataSourcesFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/calllog/CallLogModule_ProvideCallLogDataSourcesFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideCallLogDataSources(Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;Lcom/android/dialer/calllog/datasources/contacts/ContactsDataSource;)Lcom/android/dialer/calllog/datasources/DataSources;
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lcom/android/dialer/calllog/CallLogModule;->provideCallLogDataSources(Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;Lcom/android/dialer/calllog/datasources/contacts/ContactsDataSource;)Lcom/android/dialer/calllog/datasources/DataSources;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calllog/datasources/DataSources;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/dialer/calllog/datasources/DataSources;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogModule_ProvideCallLogDataSourcesFactory;->systemCallLogDataSourceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogModule_ProvideCallLogDataSourcesFactory;->contactsDataSourceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/calllog/datasources/contacts/ContactsDataSource;

    invoke-static {v0, v1}, Lcom/android/dialer/calllog/CallLogModule_ProvideCallLogDataSourcesFactory;->provideCallLogDataSources(Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;Lcom/android/dialer/calllog/datasources/contacts/ContactsDataSource;)Lcom/android/dialer/calllog/datasources/DataSources;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogModule_ProvideCallLogDataSourcesFactory;->get()Lcom/android/dialer/calllog/datasources/DataSources;

    move-result-object v0

    return-object v0
.end method
