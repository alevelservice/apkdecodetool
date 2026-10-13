.class public Ltop/xy12/codetransporter/page/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/xy12/codetransporter/page/MainActivity$SmsReceiver;
    }
.end annotation


# static fields
.field public static final BROAD_ACTION:Ljava/lang/String; = "SMS_MESSAGE"

.field private static final MY_PERMISSIONS_REQUEST_READ_CONTACTS:I = 0x3e9

.field protected static final PERMISSION_REQUEST_CODE:I = 0x2bb2


# instance fields
.field private adapter:Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;

.field private btnEdit:Landroid/widget/Button;

.field private btnEdit1:Landroid/widget/Button;

.field private btnEdit2:Landroid/widget/Button;

.field private flag:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltop/xy12/codetransporter/bean/MessageBean;",
            ">;"
        }
    .end annotation
.end field

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private sim1:Landroid/widget/EditText;

.field private sim2:Landroid/widget/EditText;

.field private sim3:Landroid/widget/EditText;

.field private smsReceiver:Ltop/xy12/codetransporter/page/MainActivity$SmsReceiver;

.field private timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;

.field private tv_state:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Ltop/xy12/codetransporter/page/MainActivity;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ltop/xy12/codetransporter/page/MainActivity;->getPhoneNumber()V

    return-void
.end method

.method static synthetic access$102(Ltop/xy12/codetransporter/page/MainActivity;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->flag:Z

    return p1
.end method

.method static synthetic access$200(Ltop/xy12/codetransporter/page/MainActivity;)Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;
    .locals 0

    .line 72
    iget-object p0, p0, Ltop/xy12/codetransporter/page/MainActivity;->adapter:Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;

    return-object p0
.end method

.method static synthetic access$300(Ltop/xy12/codetransporter/page/MainActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 72
    iget-object p0, p0, Ltop/xy12/codetransporter/page/MainActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$400(Ltop/xy12/codetransporter/page/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 72
    iget-object p0, p0, Ltop/xy12/codetransporter/page/MainActivity;->tv_state:Landroid/widget/TextView;

    return-object p0
.end method

.method private getCheckedIndex(Landroid/widget/RadioGroup;)I
    .locals 4

    .line 284
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 286
    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 287
    instance-of v3, v2, Landroid/widget/RadioButton;

    if-eqz v3, :cond_0

    .line 288
    check-cast v2, Landroid/widget/RadioButton;

    .line 289
    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getPhoneNumber()V
    .locals 3

    .line 367
    sget v0, Lcom/intercept/sms/R$id;->sim1_tv:I

    invoke-virtual {p0, v0}, Ltop/xy12/codetransporter/page/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim1:Landroid/widget/EditText;

    .line 368
    sget v0, Lcom/intercept/sms/R$id;->sim2_tv:I

    invoke-virtual {p0, v0}, Ltop/xy12/codetransporter/page/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim2:Landroid/widget/EditText;

    .line 369
    sget v0, Lcom/intercept/sms/R$id;->sim3_tv:I

    invoke-virtual {p0, v0}, Ltop/xy12/codetransporter/page/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim3:Landroid/widget/EditText;

    .line 370
    sget v0, Lcom/intercept/sms/R$id;->edit_bt:I

    invoke-virtual {p0, v0}, Ltop/xy12/codetransporter/page/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity;->btnEdit:Landroid/widget/Button;

    .line 371
    sget v0, Lcom/intercept/sms/R$id;->edit_bt1:I

    invoke-virtual {p0, v0}, Ltop/xy12/codetransporter/page/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity;->btnEdit1:Landroid/widget/Button;

    .line 372
    sget v0, Lcom/intercept/sms/R$id;->edit_bt2:I

    invoke-virtual {p0, v0}, Ltop/xy12/codetransporter/page/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity;->btnEdit2:Landroid/widget/Button;

    .line 374
    invoke-static {p0}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->getInstance(Landroid/content/Context;)Ltop/xy12/codetransporter/util/SharedPreferencesUtil;

    move-result-object v0

    const-string v1, "inputPhone"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 376
    iget-object v1, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim1:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 378
    :cond_0
    invoke-static {p0}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->getInstance(Landroid/content/Context;)Ltop/xy12/codetransporter/util/SharedPreferencesUtil;

    move-result-object v0

    const-string v1, "inputPhone1"

    invoke-virtual {v0, v1, v2}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 380
    iget-object v1, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim2:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 382
    :cond_1
    invoke-static {p0}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->getInstance(Landroid/content/Context;)Ltop/xy12/codetransporter/util/SharedPreferencesUtil;

    move-result-object v0

    const-string v1, "inputPhone2"

    invoke-virtual {v0, v1, v2}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 384
    iget-object v1, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim3:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private getRequestPermissions([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 410
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 411
    invoke-static {p0, v3}, Ltop/xy12/codetransporter/util/SimUtils$$ExternalSyntheticApiModelOutline0;->m(Ltop/xy12/codetransporter/page/MainActivity;Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 412
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 415
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public static getSim(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 427
    invoke-static {p0}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->getInstance(Landroid/content/Context;)Ltop/xy12/codetransporter/util/SharedPreferencesUtil;

    move-result-object v1

    const-string v2, "inputPhone"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 428
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 429
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_0
    invoke-static {p0}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->getInstance(Landroid/content/Context;)Ltop/xy12/codetransporter/util/SharedPreferencesUtil;

    move-result-object v1

    const-string v2, "inputPhone1"

    invoke-virtual {v1, v2, v3}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 432
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 433
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_1
    invoke-static {p0}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->getInstance(Landroid/content/Context;)Ltop/xy12/codetransporter/util/SharedPreferencesUtil;

    move-result-object p0

    const-string v1, "inputPhone2"

    invoke-virtual {p0, v1, v3}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 436
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 437
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method


# virtual methods
.method protected varargs checkPermission([Ljava/lang/String;)Z
    .locals 4

    .line 391
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/16 v2, 0x2bb2

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    .line 392
    invoke-direct {p0, p1}, Ltop/xy12/codetransporter/page/MainActivity;->getRequestPermissions([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 393
    array-length v0, p1

    if-lez v0, :cond_0

    .line 394
    invoke-static {p0, p1, v2}, Ltop/xy12/codetransporter/util/SimUtils$$ExternalSyntheticApiModelOutline0;->m(Ltop/xy12/codetransporter/page/MainActivity;[Ljava/lang/String;I)V

    return v3

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 399
    :cond_1
    array-length v0, p1

    new-array v0, v0, [I

    .line 400
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 401
    invoke-virtual {p0, v2, p1, v0}, Ltop/xy12/codetransporter/page/MainActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return v3
.end method

.method public getPermission()V
    .locals 8

    .line 445
    invoke-static {p0}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    move-result-object v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "android.permission.READ_SMS"

    const-string v3, "android.permission.READ_SMS"

    const-string v4, "android.permission.SEND_SMS"

    const-string v5, "android.permission.RECEIVE_SMS"

    const-string v6, "android.permission.RECEIVE_WAP_PUSH"

    const-string v7, "android.permission.RECEIVE_MMS"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/XXPermissions;->permission([Ljava/lang/String;)Lcom/hjq/permissions/XXPermissions;

    move-result-object v0

    new-instance v1, Ltop/xy12/codetransporter/page/MainActivity$3;

    invoke-direct {v1, p0}, Ltop/xy12/codetransporter/page/MainActivity$3;-><init>(Ltop/xy12/codetransporter/page/MainActivity;)V

    .line 455
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method

.method synthetic lambda$onCreate$0$top-xy12-codetransporter-page-MainActivity(Landroid/view/View;)V
    .locals 2

    .line 140
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->btnEdit:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "edit"

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "input_method"

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim1:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 143
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim1:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 144
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->btnEdit:Landroid/widget/Button;

    const-string v0, "ok"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {p0, v1}, Ltop/xy12/codetransporter/page/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    .line 147
    iget-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim1:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 150
    :cond_0
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->btnEdit:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim1:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 152
    invoke-virtual {p0, v1}, Ltop/xy12/codetransporter/page/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    .line 153
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 157
    :cond_1
    :goto_0
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim1:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 158
    invoke-static {p0}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->getInstance(Landroid/content/Context;)Ltop/xy12/codetransporter/util/SharedPreferencesUtil;

    move-result-object p1

    iget-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inputPhone"

    invoke-virtual {p1, v1, v0}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_2
    invoke-virtual {p0}, Ltop/xy12/codetransporter/page/MainActivity;->sendHeart()V

    return-void
.end method

.method synthetic lambda$onCreate$1$top-xy12-codetransporter-page-MainActivity(Landroid/view/View;)V
    .locals 2

    .line 168
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->btnEdit1:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "edit"

    .line 169
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "input_method"

    if-eqz p1, :cond_0

    .line 170
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim2:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 171
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim2:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 172
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->btnEdit1:Landroid/widget/Button;

    const-string v0, "ok"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {p0, v1}, Ltop/xy12/codetransporter/page/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    .line 175
    iget-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim2:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 178
    :cond_0
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->btnEdit1:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim2:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 180
    invoke-virtual {p0, v1}, Ltop/xy12/codetransporter/page/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    .line 181
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 185
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ltop/xy12/codetransporter/page/MainActivity;->sendHeart()V

    .line 186
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim2:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 187
    invoke-static {p0}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->getInstance(Landroid/content/Context;)Ltop/xy12/codetransporter/util/SharedPreferencesUtil;

    move-result-object p1

    iget-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inputPhone1"

    invoke-virtual {p1, v1, v0}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method synthetic lambda$onCreate$2$top-xy12-codetransporter-page-MainActivity(Landroid/view/View;)V
    .locals 2

    .line 191
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->btnEdit2:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "edit"

    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "input_method"

    if-eqz p1, :cond_0

    .line 193
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim3:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 194
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim3:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 195
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->btnEdit2:Landroid/widget/Button;

    const-string v0, "ok"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 196
    invoke-virtual {p0, v1}, Ltop/xy12/codetransporter/page/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    .line 198
    iget-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim3:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 201
    :cond_0
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->btnEdit2:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim3:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 203
    invoke-virtual {p0, v1}, Ltop/xy12/codetransporter/page/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    .line 204
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 208
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ltop/xy12/codetransporter/page/MainActivity;->sendHeart()V

    .line 209
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim3:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 210
    invoke-static {p0}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->getInstance(Landroid/content/Context;)Ltop/xy12/codetransporter/util/SharedPreferencesUtil;

    move-result-object p1

    iget-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim3:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inputPhone2"

    invoke-virtual {p1, v1, v0}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method synthetic lambda$onCreate$3$top-xy12-codetransporter-page-MainActivity()V
    .locals 2

    .line 0
    const-string v0, "Please enter phone"

    const/4 v1, 0x0

    .line 262
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$onCreate$4$top-xy12-codetransporter-page-MainActivity(ILjava/lang/String;Landroidx/appcompat/app/AlertDialog;)V
    .locals 5

    .line 0
    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 243
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, ""

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim3:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 252
    :cond_1
    iget-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 248
    :cond_2
    iget-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 261
    new-instance p1, Ltop/xy12/codetransporter/page/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Ltop/xy12/codetransporter/page/MainActivity$$ExternalSyntheticLambda7;-><init>(Ltop/xy12/codetransporter/page/MainActivity;)V

    invoke-virtual {p0, p1}, Ltop/xy12/codetransporter/page/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    const-string v3, "phone"

    .line 265
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "acType"

    .line 266
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "content"

    .line 267
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "time"

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "api/sms/apkSubmit"

    .line 269
    invoke-static {p0, p1, v1}, Ltop/xy12/codetransporter/util/OkHttpUtils;->apkSubmit(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 270
    invoke-virtual {p3}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    :goto_1
    return-void
.end method

.method synthetic lambda$onCreate$5$top-xy12-codetransporter-page-MainActivity(Landroid/widget/EditText;Landroid/widget/RadioGroup;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 1

    .line 229
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-direct {p0, p2}, Ltop/xy12/codetransporter/page/MainActivity;->getCheckedIndex(Landroid/widget/RadioGroup;)I

    move-result p2

    const/4 p4, -0x1

    const/4 v0, 0x0

    if-ne p2, p4, :cond_0

    const-string p1, "Please choose an app"

    .line 234
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 237
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_1

    const-string p1, "Please enter content"

    .line 238
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 241
    :cond_1
    new-instance p4, Ljava/lang/Thread;

    new-instance v0, Ltop/xy12/codetransporter/page/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2, p1, p3}, Ltop/xy12/codetransporter/page/MainActivity$$ExternalSyntheticLambda2;-><init>(Ltop/xy12/codetransporter/page/MainActivity;ILjava/lang/String;Landroidx/appcompat/app/AlertDialog;)V

    invoke-direct {p4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 273
    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method synthetic lambda$onCreate$6$top-xy12-codetransporter-page-MainActivity(Landroid/view/View;)V
    .locals 4

    .line 215
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/intercept/sms/R$layout;->dialog_custom:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 217
    sget v0, Lcom/intercept/sms/R$id;->et_input:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 218
    sget v1, Lcom/intercept/sms/R$id;->radio_group:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 220
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Please choose an app"

    .line 221
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 222
    invoke-virtual {v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 223
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    .line 224
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 226
    sget v3, Lcom/intercept/sms/R$id;->submit:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v3, Ltop/xy12/codetransporter/page/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, v0, v1, v2}, Ltop/xy12/codetransporter/page/MainActivity$$ExternalSyntheticLambda9;-><init>(Ltop/xy12/codetransporter/page/MainActivity;Landroid/widget/EditText;Landroid/widget/RadioGroup;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$sendHeart$7$top-xy12-codetransporter-page-MainActivity()V
    .locals 4

    .line 300
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "phoneList"

    .line 301
    invoke-static {p0}, Ltop/xy12/codetransporter/page/MainActivity;->getSim(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-virtual {p0}, Ltop/xy12/codetransporter/page/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ltop/xy12/codetransporter/page/MainActivity$1;

    invoke-direct {v2, p0}, Ltop/xy12/codetransporter/page/MainActivity$1;-><init>(Ltop/xy12/codetransporter/page/MainActivity;)V

    const-string v3, "api/heartbeat"

    invoke-static {v1, v3, v0, v2}, Ltop/xy12/codetransporter/util/OkHttpUtils;->heartbeat(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ltop/xy12/codetransporter/interfaces/CallBack;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 94
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    sget p1, Lcom/intercept/sms/R$layout;->activity_main:I

    invoke-virtual {p0, p1}, Ltop/xy12/codetransporter/page/MainActivity;->setContentView(I)V

    .line 96
    invoke-virtual {p0}, Ltop/xy12/codetransporter/page/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 123
    invoke-static {p0}, Ltop/xy12/codetransporter/util/SimUtils;->getPhoneNumber(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "phoneNumber list: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SmsReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget p1, Lcom/intercept/sms/R$id;->recycle_view:I

    invoke-virtual {p0, p1}, Ltop/xy12/codetransporter/page/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 130
    sget p1, Lcom/intercept/sms/R$id;->tv_state:I

    invoke-virtual {p0, p1}, Ltop/xy12/codetransporter/page/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->tv_state:Landroid/widget/TextView;

    .line 131
    new-instance p1, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;

    iget-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity;->list:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->adapter:Ltop/xy12/codetransporter/adapter/RecycleViewAdapter;

    .line 132
    iget-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 133
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 134
    iget-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v0, "android.permission.READ_SMS"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 135
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltop/xy12/codetransporter/page/MainActivity;->checkPermission([Ljava/lang/String;)Z

    .line 137
    invoke-virtual {p0}, Ltop/xy12/codetransporter/page/MainActivity;->getPermission()V

    .line 138
    invoke-direct {p0}, Ltop/xy12/codetransporter/page/MainActivity;->getPhoneNumber()V

    .line 139
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->btnEdit:Landroid/widget/Button;

    new-instance v0, Ltop/xy12/codetransporter/page/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Ltop/xy12/codetransporter/page/MainActivity$$ExternalSyntheticLambda3;-><init>(Ltop/xy12/codetransporter/page/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim1:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 164
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim2:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 165
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->sim3:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 167
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->btnEdit1:Landroid/widget/Button;

    new-instance v0, Ltop/xy12/codetransporter/page/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Ltop/xy12/codetransporter/page/MainActivity$$ExternalSyntheticLambda4;-><init>(Ltop/xy12/codetransporter/page/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity;->btnEdit2:Landroid/widget/Button;

    new-instance v0, Ltop/xy12/codetransporter/page/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Ltop/xy12/codetransporter/page/MainActivity$$ExternalSyntheticLambda5;-><init>(Ltop/xy12/codetransporter/page/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    sget p1, Lcom/intercept/sms/R$id;->manual_submission:I

    invoke-virtual {p0, p1}, Ltop/xy12/codetransporter/page/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Ltop/xy12/codetransporter/page/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Ltop/xy12/codetransporter/page/MainActivity$$ExternalSyntheticLambda6;-><init>(Ltop/xy12/codetransporter/page/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 349
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 350
    iget-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity;->smsReceiver:Ltop/xy12/codetransporter/page/MainActivity$SmsReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0, v0}, Ltop/xy12/codetransporter/page/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 352
    iput-object v1, p0, Ltop/xy12/codetransporter/page/MainActivity;->smsReceiver:Ltop/xy12/codetransporter/page/MainActivity$SmsReceiver;

    .line 354
    :cond_0
    iget-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 356
    iget-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 357
    iput-object v1, p0, Ltop/xy12/codetransporter/page/MainActivity;->timer:Ljava/util/Timer;

    .line 358
    iput-object v1, p0, Ltop/xy12/codetransporter/page/MainActivity;->timerTask:Ljava/util/TimerTask;

    .line 360
    :cond_1
    iget-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity;->tv_state:Landroid/widget/TextView;

    const-string v1, "apk\u79bb\u7ebf\uff1a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 602
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 603
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "requestCode: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SmsReceiver"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x3e9

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 607
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "\u6743\u9650\u88ab\u7528\u6237\u62d2\u7edd: "

    .line 612
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 7

    .line 323
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 324
    iget-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity;->smsReceiver:Ltop/xy12/codetransporter/page/MainActivity$SmsReceiver;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Ltop/xy12/codetransporter/page/MainActivity$SmsReceiver;

    invoke-direct {v0, p0}, Ltop/xy12/codetransporter/page/MainActivity$SmsReceiver;-><init>(Ltop/xy12/codetransporter/page/MainActivity;)V

    iput-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity;->smsReceiver:Ltop/xy12/codetransporter/page/MainActivity$SmsReceiver;

    .line 327
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "SMS_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Ltop/xy12/codetransporter/page/MainActivity;->smsReceiver:Ltop/xy12/codetransporter/page/MainActivity$SmsReceiver;

    invoke-virtual {p0, v1, v0}, Ltop/xy12/codetransporter/page/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 330
    iget-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity;->timer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 331
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity;->timer:Ljava/util/Timer;

    .line 332
    new-instance v2, Ltop/xy12/codetransporter/page/MainActivity$2;

    invoke-direct {v2, p0}, Ltop/xy12/codetransporter/page/MainActivity$2;-><init>(Ltop/xy12/codetransporter/page/MainActivity;)V

    iput-object v2, p0, Ltop/xy12/codetransporter/page/MainActivity;->timerTask:Ljava/util/TimerTask;

    .line 341
    iget-object v1, p0, Ltop/xy12/codetransporter/page/MainActivity;->timer:Ljava/util/Timer;

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x2710

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return-void
.end method

.method public sendHeart()V
    .locals 2

    .line 299
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ltop/xy12/codetransporter/page/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Ltop/xy12/codetransporter/page/MainActivity$$ExternalSyntheticLambda8;-><init>(Ltop/xy12/codetransporter/page/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 317
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
