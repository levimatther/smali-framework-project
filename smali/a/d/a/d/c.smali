.class public La/d/a/d/c;
.super Ljava/lang/Object;
.source "HttpLoggerInterceptor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lokhttp3/logging/HttpLoggingInterceptor;
    .locals 2

    .line 1
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    sget-object v1, La/d/a/d/-$$Lambda$MGLBdrtx0te_annP221OdScOHx0;->INSTANCE:La/d/a/d/-$$Lambda$MGLBdrtx0te_annP221OdScOHx0;

    invoke-direct {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    .line 17
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    return-object v0
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 1

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HttpLogger"

    invoke-static {v0, p0}, La/d/a/h/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
