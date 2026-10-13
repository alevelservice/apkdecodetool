.class Le/n/a/c$d;
.super Ljava/lang/Object;
.source "SqflitePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/n/a/c;->i(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Le/n/a/a;

.field final synthetic f:Lg/a/c/a/j;

.field final synthetic g:Le/n/a/c$i;

.field final synthetic h:Le/n/a/c;


# direct methods
.method constructor <init>(Le/n/a/c;Le/n/a/a;Lg/a/c/a/j;Le/n/a/c$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/a/c$d;->h:Le/n/a/c;

    iput-object p2, p0, Le/n/a/c$d;->e:Le/n/a/a;

    iput-object p3, p0, Le/n/a/c$d;->f:Lg/a/c/a/j;

    iput-object p4, p0, Le/n/a/c$d;->g:Le/n/a/c$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/n/a/c$d;->h:Le/n/a/c;

    iget-object v1, p0, Le/n/a/c$d;->e:Le/n/a/a;

    iget-object v2, p0, Le/n/a/c$d;->f:Lg/a/c/a/j;

    iget-object v3, p0, Le/n/a/c$d;->g:Le/n/a/c$i;

    invoke-static {v0, v1, v2, v3}, Le/n/a/c;->a(Le/n/a/c;Le/n/a/a;Lg/a/c/a/j;Lg/a/c/a/k$d;)Le/n/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/n/a/c$d;->g:Le/n/a/c$i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/n/a/c$i;->a(Ljava/lang/Object;)V

    return-void
.end method
