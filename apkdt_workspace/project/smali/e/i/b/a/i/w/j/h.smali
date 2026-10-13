.class public final Le/i/b/a/i/w/j/h;
.super Ljava/lang/Object;
.source "EventStoreModule_StoreConfigFactory.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/i/b/a/i/w/j/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/b<",
        "Le/i/b/a/i/w/j/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Le/i/b/a/i/w/j/h;
    .locals 1

    .line 1
    invoke-static {}, Le/i/b/a/i/w/j/h$a;->a()Le/i/b/a/i/w/j/h;

    move-result-object v0

    return-object v0
.end method

.method public static b()Le/i/b/a/i/w/j/d;
    .locals 2

    .line 1
    invoke-static {}, Le/i/b/a/i/w/j/e;->c()Le/i/b/a/i/w/j/d;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/datatransport/runtime/dagger/internal/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/i/b/a/i/w/j/d;

    return-object v0
.end method


# virtual methods
.method public get()Le/i/b/a/i/w/j/d;
    .locals 1

    .line 2
    invoke-static {}, Le/i/b/a/i/w/j/h;->b()Le/i/b/a/i/w/j/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/i/b/a/i/w/j/h;->get()Le/i/b/a/i/w/j/d;

    move-result-object v0

    return-object v0
.end method
