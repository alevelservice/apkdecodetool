.class Le/o/a/b$a;
.super Ljava/lang/Object;
.source "InterceptorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/o/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final a:Le/o/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/o/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/o/a/b;-><init>(Le/o/a/c;)V

    sput-object v0, Le/o/a/b$a;->a:Le/o/a/b;

    return-void
.end method
