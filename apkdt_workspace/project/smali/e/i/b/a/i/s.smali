.class abstract Le/i/b/a/i/s;
.super Ljava/lang/Object;
.source "TransportRuntimeComponent.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lcom/google/android/datatransport/runtime/dagger/Component;
    modules = {
        Lcom/google/android/datatransport/runtime/backends/f;,
        Le/i/b/a/i/w/j/e;,
        Le/i/b/a/i/i;,
        Le/i/b/a/i/w/h;,
        Le/i/b/a/i/w/f;,
        Lcom/google/android/datatransport/runtime/time/b;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/i/b/a/i/s$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/i/b/a/i/s;->i()Le/i/b/a/i/w/j/c;

    move-result-object v0

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method abstract i()Le/i/b/a/i/w/j/c;
.end method

.method abstract j()Le/i/b/a/i/r;
.end method
