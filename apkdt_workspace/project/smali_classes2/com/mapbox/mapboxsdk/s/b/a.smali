.class public Lcom/mapbox/mapboxsdk/s/b/a;
.super Ljava/lang/Object;
.source "LibraryLoaderProviderImpl.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/s/b/a$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/mapbox/mapboxsdk/b;
    .locals 2

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/s/b/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mapbox/mapboxsdk/s/b/a$b;-><init>(Lcom/mapbox/mapboxsdk/s/b/a$a;)V

    return-object v0
.end method
