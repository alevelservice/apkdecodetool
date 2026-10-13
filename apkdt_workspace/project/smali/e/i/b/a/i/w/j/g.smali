.class public final Le/i/b/a/i/w/j/g;
.super Ljava/lang/Object;
.source "EventStoreModule_SchemaVersionFactory.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/i/b/a/i/w/j/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/b<",
        "Ljava/lang/Integer;",
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

.method public static a()Le/i/b/a/i/w/j/g;
    .locals 1

    .line 1
    invoke-static {}, Le/i/b/a/i/w/j/g$a;->a()Le/i/b/a/i/w/j/g;

    move-result-object v0

    return-object v0
.end method

.method public static b()I
    .locals 1

    .line 1
    invoke-static {}, Le/i/b/a/i/w/j/e;->b()I

    move-result v0

    return v0
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 1

    .line 2
    invoke-static {}, Le/i/b/a/i/w/j/g;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/i/b/a/i/w/j/g;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
