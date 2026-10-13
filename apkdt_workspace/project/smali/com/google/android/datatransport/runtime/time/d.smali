.class public final Lcom/google/android/datatransport/runtime/time/d;
.super Ljava/lang/Object;
.source "TimeModule_UptimeClockFactory.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/time/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/b<",
        "Lcom/google/android/datatransport/runtime/time/a;",
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

.method public static a()Lcom/google/android/datatransport/runtime/time/d;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/d$a;->a()Lcom/google/android/datatransport/runtime/time/d;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lcom/google/android/datatransport/runtime/time/a;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/b;->b()Lcom/google/android/datatransport/runtime/time/a;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/datatransport/runtime/dagger/internal/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/datatransport/runtime/time/a;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/datatransport/runtime/time/a;
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/d;->b()Lcom/google/android/datatransport/runtime/time/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/time/d;->get()Lcom/google/android/datatransport/runtime/time/a;

    move-result-object v0

    return-object v0
.end method
