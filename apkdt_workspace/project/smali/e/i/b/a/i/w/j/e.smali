.class public abstract Le/i/b/a/i/w/j/e;
.super Ljava/lang/Object;
.source "EventStoreModule.java"


# annotations
.annotation runtime Lcom/google/android/datatransport/runtime/dagger/Module;
.end annotation


# direct methods
.method static a()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/android/datatransport/runtime/dagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "SQLITE_DB_NAME"
    .end annotation

    const-string v0, "com.google.android.datatransport.events"

    return-object v0
.end method

.method static b()I
    .locals 1
    .annotation runtime Lcom/google/android/datatransport/runtime/dagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "SCHEMA_VERSION"
    .end annotation

    .line 1
    sget v0, Le/i/b/a/i/w/j/h0;->g:I

    return v0
.end method

.method static c()Le/i/b/a/i/w/j/d;
    .locals 1
    .annotation runtime Lcom/google/android/datatransport/runtime/dagger/Provides;
    .end annotation

    .line 1
    sget-object v0, Le/i/b/a/i/w/j/d;->a:Le/i/b/a/i/w/j/d;

    return-object v0
.end method
