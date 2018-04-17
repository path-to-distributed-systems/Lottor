package com.blueskykong.tm.core.service.impl;

import com.blueskykong.tm.common.bean.TxTransactionInfo;
import com.blueskykong.tm.common.enums.OperationEnum;
import com.blueskykong.tm.core.service.TxTransactionFactoryService;
import com.blueskykong.tm.core.service.handler.ConfirmTxTransactionHandler;
import com.blueskykong.tm.core.service.handler.ConsumedTransactionHandler;
import com.blueskykong.tm.core.service.handler.StartTxTransactionHandler;

/**
 * @author keets
 */
public class TxTransactionFactoryServiceImpl implements TxTransactionFactoryService {

    @Override
    public Class factoryOf(TxTransactionInfo info) throws Throwable {
        OperationEnum operation = info.getOperationEnum();
        Class handler;
        switch (operation) {
            case TX_NEW:
                handler = StartTxTransactionHandler.class;
                break;
            case TX_COMPLETE:
                handler = ConfirmTxTransactionHandler.class;
                break;
            case TX_CONSUMED:
                handler = ConsumedTransactionHandler.class;
                break;
            default:
                handler = StartTxTransactionHandler.class;
                break;
        }
        return handler;
    }
}