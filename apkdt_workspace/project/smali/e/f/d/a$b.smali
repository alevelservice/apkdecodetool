.class Le/f/d/a$b;
.super Ljava/lang/Object;
.source "AbstractDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/f/d/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Le/f/d/e;

.field final synthetic f:Le/f/d/a;


# direct methods
.method constructor <init>(Le/f/d/a;Le/f/d/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/f/d/a$b;->f:Le/f/d/a;

    iput-object p2, p0, Le/f/d/a$b;->e:Le/f/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/f/d/a$b;->e:Le/f/d/e;

    iget-object v1, p0, Le/f/d/a$b;->f:Le/f/d/a;

    invoke-interface {v0, v1}, Le/f/d/e;->d(Le/f/d/c;)V

    return-void
.end method
