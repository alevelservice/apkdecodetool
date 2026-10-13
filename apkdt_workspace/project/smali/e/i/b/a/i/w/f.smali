.class public abstract Le/i/b/a/i/w/f;
.super Ljava/lang/Object;
.source "SchedulingConfigModule.java"


# annotations
.annotation runtime Lcom/google/android/datatransport/runtime/dagger/Module;
.end annotation


# direct methods
.method static a(Lcom/google/android/datatransport/runtime/time/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;
    .locals 0
    .param p0    # Lcom/google/android/datatransport/runtime/time/a;
        .annotation build Lcom/google/android/datatransport/runtime/time/WallTime;
        .end annotation
    .end param
    .annotation runtime Lcom/google/android/datatransport/runtime/dagger/Provides;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;->a(Lcom/google/android/datatransport/runtime/time/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;

    move-result-object p0

    return-object p0
.end method
